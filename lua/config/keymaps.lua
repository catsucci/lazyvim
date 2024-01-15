-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set(
    "n",
    "<leader>pf",
    vim.cmd.Ex,
    { desc = "Vim's Explorer", remap = true }
)

keymap.set(
    "n",
    "x",
    '"_x',
    { desc = "Delete into the void register", remap = true }
) -- send the char to the void reg

-- Increment/decrement
keymap.set("n", "+", "<C-a>", { desc = "Increment", remap = true })
keymap.set("n", "-", "<C-x>", { desc = "Decrement", remap = true })

-- Delete a word backwards
keymap.set(
    "n",
    "dw",
    'vb"_d',
    { desc = "Delete a word backwards", remap = true }
)

-- New tab
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Moving elements around
keymap.set(
    "v",
    "J",
    ":m '>+1<CR>gv=gv",
    { desc = "Move elements up", remap = true }
)
keymap.set(
    "v",
    "K",
    ":m '<-2<CR>gv=gv",
    { desc = "Move elements down", remap = true }
)

-- Better jumping
keymap.set("n", "J", "mzJ`z", { desc = "Append the line below", remap = true })
keymap.set(
    "n",
    "<C-d>",
    "<C-d>zz",
    { desc = "Jump half page Down", remap = true }
)
keymap.set(
    "n",
    "<C-u>",
    "<C-u>zz",
    { desc = "Jump half page Up", remap = true }
)
keymap.set("n", "n", "nzzzv", { desc = "Next search term", remap = true })
keymap.set("n", "N", "Nzzzv", { desc = "Previous search term", remap = true })

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- greatest remap ever
keymap.set(
    "x",
    "<leader>p",
    [["_dP]],
    { desc = "Past without losing yank", remap = true }
)

-- next greatest remap ever
keymap.set(
    { "n", "v" },
    "<leader>y",
    [["+y]],
    { desc = "Yank to clipboard", remap = true }
)
keymap.set(
    "n",
    "<leader>Y",
    [["+Y]],
    { desc = "Yank to clipboard", remap = true }
)

keymap.set(
    { "n", "v" },
    "<leader>d",
    [["_d]],
    { desc = "Delete into the void register", remap = true }
)

-- This is going to get me cancelled
keymap.set("i", "<C-c>", "<Esc>")

-- Undotree
keymap.set(
    "n",
    "<leader>pu",
    vim.cmd.UndotreeToggle,
    { desc = "Toggle Undotree>", remap = true }
)

-- Harpoon
keymap.set(
    "n",
    "<leader>ha",
    require("harpoon.mark").add_file,
    { desc = "Add file", remap = true }
)
keymap.set(
    "n",
    "<leader>hh",
    require("harpoon.ui").toggle_quick_menu,
    { desc = "Toggle quick menu", remap = true }
)
keymap.set("n", "<leader>h1", function()
    require("harpoon.ui").nav_file(1)
end, { desc = "navigate to file 1", remap = true })
keymap.set("n", "<leader>h2", function()
    require("harpoon.ui").nav_file(2)
end, { desc = "navigate to file 2", remap = true })
keymap.set("n", "<leader>h3", function()
    require("harpoon.ui").nav_file(3)
end, { desc = "navigate to file 3", remap = true })
keymap.set("n", "<leader>h4", function()
    require("harpoon.ui").nav_file(4)
end, { desc = "navigate to file 4", remap = true })
keymap.set("n", "<leader>h5", function()
    require("harpoon.ui").nav_file(5)
end, { desc = "navigate to file 5", remap = true })
keymap.set("n", "<leader>h6", function()
    require("harpoon.ui").nav_file(6)
end, { desc = "navigate to file 6", remap = true })
keymap.set("n", "<leader>h7", function()
    require("harpoon.ui").nav_file(7)
end, { desc = "navigate to file 7", remap = true })
keymap.set("n", "<leader>h8", function()
    require("harpoon.ui").nav_file(8)
end, { desc = "navigate to file 8", remap = true })
keymap.set("n", "<leader>h9", function()
    require("harpoon.ui").nav_file(9)
end, { desc = "navigate to file 9", remap = true })

-- ThePrimeagen replace
keymap.set(
    "n",
    "<leader>pr",
    [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "ThePrimeagen replace", remap = true }
)

-- Tmux sessionizer script
keymap.set(
    "n",
    "<C-f>",
    "<cmd>silent !tmux neww tmux-sessionizer<CR>",
    { desc = "Tmux sessionizer", remap = true }
)
