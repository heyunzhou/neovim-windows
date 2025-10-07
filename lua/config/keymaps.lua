-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
-- remap vcdy
local motions = { "w", "b", "B", "(", "{", "t", '"', "'" }
for i, v in ipairs(motions) do
  keymap.set("n", "v" .. v, "vi" .. v)
  keymap.set("n", "c" .. v, "ci" .. v)
  keymap.set("n", "d" .. v, "di" .. v)
  keymap.set("n", "y" .. v, "yi" .. v)
end

-- Indent management
keymap.set("n", ">", ">>")
keymap.set("n", "<", "<<")
keymap.set("v", ">", ">gv")
keymap.set("v", "<", "<gv")

-- move management
keymap.set({ "n", "v" }, "H", "^")
keymap.set({ "n", "v" }, "L", "$")

-- other
keymap.set({ "i" }, "jj", "<ESC>")

-- Move lines up and down like in IDEs (Alt + j / Alt + k)
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", opts)
vim.keymap.set("n", "<A-UP>", ":m .-2<CR>==", opts)
vim.keymap.set("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", opts)
vim.keymap.set("i", "<A-UP>", "<Esc>:m .-2<CR>==gi", opts)
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "<A-UP>", ":m '<-2<CR>gv=gv", opts)
