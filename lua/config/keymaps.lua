-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>pf", vim.cmd.Ex)

keymap.set("n", "x", '"_x') -- send the char to the void reg

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- New tab
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Moving elements around
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Better jumping
keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- greatest remap ever
keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set({ "n", "v" }, "<leader>d", [["_d]])

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
keymap.set("n", "<leader>ha", require("harpoon.mark").add_file)
keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu)
keymap.set("n", "<leader>h1", function()
    require("harpoon.ui").nav_file(1)
end)
keymap.set("n", "<leader>h2", function()
    require("harpoon.ui").nav_file(2)
end)
keymap.set("n", "<leader>h3", function()
    require("harpoon.ui").nav_file(3)
end)
keymap.set("n", "<leader>h4", function()
    require("harpoon.ui").nav_file(4)
end)
keymap.set("n", "<leader>h5", function()
    require("harpoon.ui").nav_file(5)
end)
keymap.set("n", "<leader>h6", function()
    require("harpoon.ui").nav_file(6)
end)
keymap.set("n", "<leader>h7", function()
    require("harpoon.ui").nav_file(7)
end)
keymap.set("n", "<leader>h8", function()
    require("harpoon.ui").nav_file(8)
end)
keymap.set("n", "<leader>h9", function()
    require("harpoon.ui").nav_file(9)
end)

-- ThePrimeagen replace
keymap.set(
    "n",
    "<leader>pr",
    [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]
)
