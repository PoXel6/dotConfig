local telescope = require("telescope")
telescope.setup({
    defaults = {
        preview = false,
        prompt_prefix = "  >  ",
        file_ignore_patterns = {
            ".gradle/",
            "node_modules/",
            ".git/",
            ".idea/",
            ".vscode/",
        },
    },
    fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = "smart_case",
    },

    telescope.load_extension("fzf"),
    telescope.load_extension("ui-select")

})
