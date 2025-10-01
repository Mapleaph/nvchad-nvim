return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre", -- uncomment for format on save
        opts = require "configs.conform",
    },

    -- These are some examples, uncomment them if you want to see them work!
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },
    {
        "christoomey/vim-tmux-navigator",
        --vim.keymap.set('n', '<C-h>', ':TmuxNavigateLeft<CR>'),
        --vim.keymap.set('n', '<C-j>', ':TmuxNavigateDown<CR>'),
        --vim.keymap.set('n', '<C-k>', ':TmuxNavigateUp<CR>'),
        --vim.keymap.set('n', '<C-l>', ':TmuxNavigateRight<CR>')
    },
    {
        "vim-test/vim-test",
        dependencies = {
            "preservim/vimux",
        },
        vim.keymap.set("n", "<leader>t", ":TestNearest<CR>"),
        vim.keymap.set("n", "<leader>T", ":TestFile<CR>"),
        vim.keymap.set("n", "<leader>a", ":TestSuite<CR>"),
        vim.keymap.set("n", "<leader>l", ":TestLast<CR>"),
        vim.keymap.set("n", "<leader>g", ":TestVisit<CR>"),
        vim.cmd "let test#strategy = 'vimux'",
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "html",
                "css",
            },
        },
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
        -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
        opts = function()
            require('render-markdown').setup({
                anti_conceal = {
                    enabled = true,
                    disabled_modes = false,
                    above = 0,
                    below = 0,
                    -- Which elements to always show, ignoring anti conceal behavior. Values can either be
                    -- booleans to fix the behavior or string lists representing modes where anti conceal
                    -- behavior will be ignored. Valid values are:
                    --   bullet
                    --   callout
                    --   check_icon, check_scope
                    --   code_background, code_border, code_language
                    --   dash
                    --   head_background, head_border, head_icon
                    --   indent
                    --   link
                    --   quote
                    --   sign
                    --   table_border
                    --   virtual_lines
                    ignore = {
                        code_background = true,
                        indent = true,
                        sign = true,
                        virtual_lines = true,
                    },
                },
            })
        end,
        ft = { "markdown" },
    },
    {
        'code-biscuits/nvim-biscuits',
        dependencies = { 'nvim-treesitter/nvim-treesitter' },
        opts = function()
            require('nvim-biscuits').setup({
                default_config = {
                    max_length = 12,
                    min_distance = 5,
                    prefix_string = " 📎 "
                },
                language_config = {
                    clangd = {
                        enabled = true
                    },
                    html = {
                        prefix_string = " 🌐 "
                    },
                    javascript = {
                        prefix_string = " ✨ ",
                        max_length = 80
                    },
                    python = {
                        disabled = true
                    }
                }
            })
        end,
        event = "VeryLazy",
    },
}
