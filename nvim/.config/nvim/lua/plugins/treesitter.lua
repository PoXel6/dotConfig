return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs', -- Sets main module to use for opts
        opts = {
          ensure_installed = {"bash", "c", "lua"},
          auto_install = true,
          highlight = {
            enable = true,
          },
    },
}

