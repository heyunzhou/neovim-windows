-- Key mappings
vim.g.mapleader = " "                              -- Set leader key to space
vim.g.maplocalleader = " "                         -- Set local leader key (NEW)


local keymap = vim.keymap
local opts = { noremap = true, silent = true }
-- window management
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- remap vcdy
local motions = {"p", "w", "b", "B", "(", "{", "t", "\"", "'"}
for i, v in ipairs(motions) do
  keymap.set("n", "v"..v, "vi"..v)
  keymap.set("n", "c"..v, "ci"..v)
  keymap.set("n", "d"..v, "di"..v)
  keymap.set("n", "y"..v, "yi"..v)
end

-- Indent management
keymap.set("n", ">", ">>")
keymap.set("n", "<", "<<")
keymap.set("v", ">", ">gv")
keymap.set("v", "<", "<gv")

-- move management
keymap.set({"n", "v"}, "H", "^")
keymap.set({"n", "v"}, "L", "$")

-- other
keymap.set({"i"}, "jj", "<ESC>")
keymap.set({"n"}, "<C-a>", "ggVG", opts)
keymap.set({"v","i"}, "<C-a>", "<Esc>ggVG", opts)


-- Move lines up and down like in IDEs (Alt + j / Alt + k)
keymap.set("n", "<A-Down>", ":m .+1<CR>==", opts)
keymap.set("n", "<A-UP>", ":m .-2<CR>==", opts)
keymap.set("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", opts)
keymap.set("i", "<A-UP>", "<Esc>:m .-2<CR>==gi", opts)
keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "<A-UP>", ":m '<-2<CR>gv=gv", opts)
