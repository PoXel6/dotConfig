return {
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000,
        event = "VeryLazy",
        opts = {
            options = {
                transparency = true,
                highlight_inactive_windows = true,
            },
        },
    },
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        event = "VeryLazy",
        opts = {},
    },
    {
        "PoXel6/doom-one.nvim",
        dir = "~/Personal/doom-one.nvim",
        priority = 1000,
        config = function()
            vim.g.doom_one_cursor_coloring = true
            vim.g.doom_one_terminal_colors = true
            vim.g.doom_one_italic_comments = true
            vim.g.doom_one_enable_treesitter = true
            vim.g.doom_one_diagnostics_text_color = true
            vim.g.doom_one_transparent_background = true
            vim.g.doom_one_plugin_telescope = true
            vim.g.doom_one_relative_line_color = true
            vim.g.doom_one_plugin_blink = true
        end
    },
    {
        "Mofiqul/vscode.nvim",
        priority = 1000,
        event = "VeryLazy",
        opts = {
            transparent = true,
            italic_comments = true,
            underline_links = true,
            terminal_colors = true,
        },
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true,
        opts = {  transparent_mode = true }
    }
}
