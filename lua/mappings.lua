-- 引入 nvchad.mappings 中的配置
require "nvchad.mappings"

-- 添加你自己的映射
local map = vim.keymap.set

-- Insert mode keymaps
map("i", "jk", "<ESC>")
map("i", "<C-s>", "<ESC>:w<CR>a")
map("i", "'", "''<Left>")
map("i", '"', '""<Left>')
map("i", "(", "()<Left>")
map("i", "[", "[]<Left>")
map("i", "{", "{}<Left>")
map("i", "{<CR>", "{}<Left><CR><ESC>O")

-- Normal mode keymaps
map("n", "JK", ":q<CR>")
map("n", "<C-a>", "gg0vG$")
map("n", "<C-s>", ":w<CR>")
map("n", "H", "^")
map("n", "L", "$")
map("n", "U", "<C-r>")
map("n", "<leader>mm", ":noh<CR>")
map("n", "<tab>", ":bnext<CR>")
map("n", "<s-tab>", ":bprevious<CR>")
map("n", "<leader>fo", ":browse oldfiles<CR>")

-- Visual mode keymaps
map("v", "q", "<ESC>")
map("v", '"', 'hdi"<ESC>pla"<ESC>l')
map("v", "'", "hdi'<ESC>pla'<ESC>l")
map("v", "(", "hdi(<ESC>pla)<ESC>l")
map("v", "[", "hdi[<ESC>pla]<ESC>l")
map("v", "{", "hdi{<ESC>pla}<ESC>l")
map("v", "`", "hdi`<ESC>pla`<ESC>l")
map("v", "<", "<gv")
map("v", ">", ">gv")
map("v", "H", "^")
map("v", "L", "$")

