-- ui related plugins

return {
    -- colorscheme
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin",
        },
    },

    -- statusline
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        opts = {
            options = {
                globalstatus = false,
                theme = "catppuccin",
            },
        },
    },

    -- buffer line
    {
        "akinsho/bufferline.nvim",
        event = "VeryLazy",
        keys = {
            { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
            { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
        },
        opts = {
            options = {
                mode = "tabs",
                -- separator_style = "slant",
                show_buffer_close_icons = false,
                show_close_icon = false,
            },
        },
    },

    -- Giving harpoon its groupe name in the keymap
    {
        "folke/which-key.nvim",
        opts = {
            defaults = {
                ["<leader>h"] = { name = "+harpoon" },
                ["<leader>p"] = { name = "+prime" },
            },
        },
    },
}
