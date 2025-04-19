require("dressing").setup({
	input = {
		default_prompt = "Input", -- Default prompt string
		trim_prompt = true, -- Trim trailing `:` from prompt
		title_pos = "center", -- 'left', 'right', 'center'
		start_mode = "insert", -- The initial mode when the window opens (insert|normal|visual|select).
		border = "rounded",
		prefer_width = 0.4, -- These can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
		width = nil,
		-- min_width and max_width can be a list of mixed types.
		max_width = { 140, 0.9 },
		min_width = { 20, 0.2 }, -- min_width = {20, 0.2} means "the greater of 20 columns or 20% of total"

		buf_options = {},
		win_options = {
			wrap = false, -- Disable line wrapping
			list = true, -- Indicator for when text exceeds window
			listchars = "precedes:…,extends:…",
			sidescrolloff = 10, -- Increase this for more context when text scrolls off the window
		},
	},
	select = {
		get_config = function(opts)
			if opts.kind == "codeaction" then
				return {
					backend = "nui",
					nui = {
						relative = "cursor",
						max_width = 40,
					},
				}
			end
		end,
		enabled = true,
		backend = { "telescope", "fzf_lua", "fzf", "builtin", "nui" }, -- Priority list of preferred vim.select implementations
		trim_prompt = true,

		telescope = nil,

		nui = {
			position = "50%",
			size = nil,
			relative = "editor",
			border = {
				style = "rounded",
			},
			buf_options = {
				swapfile = false,
				filetype = "DressingSelect",
			},
			win_options = {
				winblend = 0,
			},
			max_width = 80,
			max_height = 40,
			min_width = 40,
			min_height = 10,
		},

		-- Options for built-in selector
		builtin = {
			show_numbers = true, -- Display numbers for options and set up keymaps
			border = "rounded", -- These are passed to nvim_open_win
			relative = "editor", -- 'editor' and 'win' will default to being centered

			buf_options = {},
			win_options = {
				cursorline = true,
				cursorlineopt = "both",
				winhighlight = "MatchParen:", -- disable highlighting for the brackets around the numbers
				statuscolumn = " ", -- adds padding at the left border
			},

			width = nil,
			max_width = { 140, 0.8 },
			min_width = { 40, 0.2 },
			height = nil,
			max_height = 0.9,
			min_height = { 10, 0.2 },
		},

		-- Used to override format_item. See :help dressing-format
		format_item_override = {},

		-- see :help dressing_get_config
		get_config = nil,
	},
})
