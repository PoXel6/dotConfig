require("smart-splits").setup({
	ignored_buftypes = {
		"nofile",
		"quickfix",
		"prompt",
	},
	default_amount = 3,
	float_win_behavior = "previous",
	move_cursor_same_row = false,
	cursor_follows_swapped_bufs = false,
	resize_mode = {
		quit_key = "<ESC>",
		resize_keys = { "h", "j", "k", "l" },
		silent = false,
		-- must be functions, they will be executed when
		-- entering or exiting the resize mode
		hooks = {
			on_enter = nil,
			on_leave = nil,
		},
	},
	ignored_events = {
		"BufEnter",
		"WinEnter",
	},
	-- enable or disable a multiplexer integration;
	-- automatically determined, unless explicitly disabled or set,
	-- by checking the $TERM_PROGRAM environment variable,
	-- and the $KITTY_LISTEN_ON environment variable for Kitty.
	-- You can also set this value by setting `vim.g.smart_splits_multiplexer_integration`
	-- before the plugin is loaded (e.g. for lazy environments).
	multiplexer_integration = nil,
	-- disable multiplexer navigation if current multiplexer pane is zoomed
	-- this functionality is only supported on tmux and Wezterm due to kitty
	-- not having a way to check if a pane is zoomed
	disable_multiplexer_nav_when_zoomed = true,
	log_level = "info",
})
