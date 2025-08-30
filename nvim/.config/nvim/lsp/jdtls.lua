local handlers = require 'vim.lsp.handlers'

local function get_jdtls_cache_dir()
	return os.getenv('XDG_CACHE_HOME') .. '/jdtls'
end

local function get_jdtls_dir()
	return vim.fn.stdpath('data') .. '/mason/packages/jdtls'
end


-- local function get_jdtls_jvm_args()
-- 	local args = { "-javaagent:$HOME/.local/share/nvim/mason/packages/jdtls/lombok.jar" }
--
-- 	for a in string.gmatch((env.JDTLS_JVM_ARGS or ''), '%S+') do
-- 		local arg = string.format('--jvm-arg=%s', a)
-- 		table.insert(args, arg)
-- 	end
-- 	return unpack(args)
-- end

-- TextDocument version is reported as 0, override with nil so that
-- the client doesn't think the document is newer and refuses to update
-- See: https://github.com/eclipse/eclipse.jdt.ls/issues/1695
local function fix_zero_version(workspace_edit)
	if workspace_edit and workspace_edit.documentChanges then
		for _, change in pairs(workspace_edit.documentChanges) do
			local text_document = change.textDocument
			if text_document and text_document.version and text_document.version == 0 then
				text_document.version = nil
			end
		end
	end
	return workspace_edit
end

local function on_textdocument_codeaction(err, actions, ctx)
	for _, action in ipairs(actions) do
		-- TODO: (steelsojka) Handle more than one edit?
		if action.command == 'java.apply.workspaceEdit' then                                           -- 'action' is Command in java format
			action.edit = fix_zero_version(action.edit or action.arguments[1])
		elseif type(action.command) == 'table' and action.command.command == 'java.apply.workspaceEdit' then -- 'action' is CodeAction in java format
			action.edit = fix_zero_version(action.edit or action.command.arguments[1])
		end
	end

	handlers[ctx.method](err, actions, ctx)
end

local function on_textdocument_rename(err, workspace_edit, ctx)
	handlers[ctx.method](err, fix_zero_version(workspace_edit), ctx)
end

local function on_workspace_applyedit(err, workspace_edit, ctx)
	handlers[ctx.method](err, fix_zero_version(workspace_edit), ctx)
end

-- Non-standard notification that can be used to display progress
local function on_language_status(_, result)
	local command = vim.api.nvim_command
	command 'echohl ModeMsg'
	command(string.format('echo "%s"', result.message))
	command 'echohl None'
end

return {
	cmd = {
		'jdtls',
		'-Declipse.application=org.eclipse.jdt.ls.core.id1',
		'-Dosgi.bundles.defaultStartLevel=4',
		'-Declipse.product=org.eclipse.jdt.ls.core.product',
		'-Dlog.level=ALL',
		'-Xmx1G',
		'add-modules=ALL-SYSTEM',
		'--add-opens java.base/java.util=ALL-UNNAMED',
		'--add-opens java.base/java.lang=ALL-UNNAMED',
		'-configuration',
		get_jdtls_dir() .. '/config_linux ',
		'-data',
		get_jdtls_cache_dir() .. '/workspace',
		'--jvm-arg=-javaagent:' .. vim.fn.stdpath('data') .. '/mason/packages/jdtls/lombok.jar',
		'--jvm-arg=-Xbootclasspath/a:' .. vim.fn.stdpath('data') .. '/mason/packages/jdtls/lombok.jar',


	},
	-- cmd = {
	-- 'java ',
	-- '-Declipse.application=org.eclipse.jdt.ls.core.id1 ',
	-- '-Dosgi.bundles.defaultStartLevel=4 ',
	-- '-Declipse.product=org.eclipse.jdt.ls.core.product ',
	-- '-Dlog.level=ALL ',
	-- '-Xmx1G ',
	-- 'add-modules=ALL-SYSTEM ',
	-- '--add-opens java.base/java.util=ALL-UNNAMED ',
	-- '--add-opens java.base/java.lang=ALL-UNNAMED ',
	-- '-javaagent:' .. '/home/pox/.local/share/nvim/mason/packages/jdtls/lombok.jar',
	-- '-jar ',
	-- get_jdtls_dir() .. '/plugins/org.eclipse.equinox.launcher_1.7.0.v20250331-1702.jar',
	-- '-configuration ',
	-- get_jdtls_dir() .. '/config_linux ',
	-- '-data ',
	-- get_jdtls_cache_dir() .. '/workspace',
	-- },
	filetypes = { 'java' },
	root_markers = {
		'.git',
		'build.gradle',
		'build.gradle.kts',
		'pom.xml',       -- Maven
		'settings.gradle', -- Gradle
		'settings.gradle.kts', -- Gradle
	},
	init_options = {
		workspace = get_jdtls_cache_dir() .. '/workspace',
		jvm_args = {},
		os_config = nil,
	},
	handlers = {
		-- Due to an invalid protocol implementation in the jdtls we have to conform these to be spec compliant.
		-- https://github.com/eclipse/eclipse.jdt.ls/issues/376
		['textDocument/codeAction'] = on_textdocument_codeaction,
		['textDocument/rename'] = on_textdocument_rename,
		['workspace/applyEdit'] = on_workspace_applyedit,
		['language/status'] = vim.schedule_wrap(on_language_status),
	},
}
