return {
  cmd = function(dispatchers, config)
    local cmd = 'biome'
    local local_cmd = (config or {}).root_dir and config.root_dir .. '/node_modules/.bin/biome'
    if local_cmd and vim.fn.executable(local_cmd) == 1 then
      cmd = local_cmd
    end
    return vim.lsp.rpc.start({ cmd, 'lsp-proxy' }, dispatchers)
  end,
  filetypes = {
    'astro',
    'css',
    'graphql',
    'html',
    'javascript',
    'javascriptreact',
    'json',
    'jsonc',
    'svelte',
    'typescript',
    'typescript.tsx',
    'typescriptreact',
    'vue',
  },

root_markers_with_field = function(root_files, new_names, field, fname)
  local path = vim.fn.fnamemodify(fname, ':h')
  local found = vim.fs.find(new_names, { path = path, upward = true })
  for _, f in ipairs(found or {}) do
    for line in io.lines(f) do
      if line:find(field) then
        root_files[#root_files + 1] = vim.fs.basename(f)
        break
      end
    end
  end
  return root_files
end,

insert_package_json = function(root_files, field, fname)
  return root_markers_with_field(root_files, { 'package.json', 'package.json5' }, field, fname)
end,

workspace_required = true,
root_dir = function(_, on_dir)
	local cwd = vim.fn.getcwd()
	local root_files = { 'biome.json', 'biome.jsonc' }
	root_files = insert_package_json(root_files, 'biome', fname)
	local root_dir = vim.fs.dirname(vim.fs.find(root_files, { path = cwd, upward = true })[1])
	on_dir(root_dir)
end,
}
