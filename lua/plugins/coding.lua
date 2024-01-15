-- coding related plugins
return {
    -- The greatest git plugin
    "tpope/vim-fugitive",

    -- Undotree to not lose work
    "mbbill/undotree",

    -- Incremental rename
    {
        "smjonas/inc-rename.nvim",
        cmd = "IncRename",
        config = true,
    },

    -- Refactoring tool
    {
        "ThePrimeagen/refactoring.nvim",
        keys = {
            {
                "<leader>r",
                function()
                    require("refactoring").select_refactor()
                end,
                desc = "refactoring",
                mode = "v",
                noremap = true,
                silent = true,
                expr = false,
            },
        },
        opts = {},
    },

    -- Create annotations with one keybind, and jump your cursor in the inserted annotation
    {
        "danymat/neogen",
        keys = {
            {
                "<leader>cc",
                function()
                    require("neogen").generate({})
                end,
                desc = "Neogen Comment",
            },
        },
        opts = { snippet_engine = "luasnip" },
    },
    {
        "christoomey/vim-tmux-navigator",
        event = "VeryLazy",
        keys = {

            {
                "<C-h>",
                "<cmd>TmuxNavigateLeft<cr>",
                desc = "Got to the left pane",
            },

            {
                "<C-j>",
                "<cmd>TmuxNavigateDown<cr>",
                desc = "Got to the down pane",
            },

            {
                "<C-k>",
                "<cmd>TmuxNavigateUp<cr>",
                desc = "Got to the up pane",
            },
            {
                "<C-l>",
                "<cmd>TmuxNavigateRight<cr>",
                desc = "Got to the right pane",
            },
        },
    },
}
