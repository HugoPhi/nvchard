require "nvchad.mappings"
local map = vim.keymap.set -- Insert mode keymaps
map("i", "jk", "<ESC>")
map("i", "<C-s>", "<ESC>:w<CR>a")
map("i", "'", "''<Left>")
map("i", '"', '""<Left>')
map("i", "(", "()<Left>")
map("i", "[", "[]<Left>")
map("i", "{", "{}<Left>")
map("i", "{<CR>", "{}<Left><CR><ESC>O")

-- Normal mode keymaps
-- 'K' -> lspinfo, 'KK' -> get into info
map("n", "JK", ":q<CR>")
map("n", "<C-a>", "gg0vG$")
map("n", "<C-s>", ":w<CR>")
map("n", "H", "^")
map("n", "L", "$")
map("n", "U", "<C-r>")
map("n", "<leader>mm", ":noh<CR>")
map("n", "<tab>", ":bnext<CR>")
map("n", "<s-tab>", ":bprevious<CR>")
-- map("n", "<leader>fo", ":browse oldfiles<CR>")
map("n", "<leader>fo", ":Telescope oldfiles<CR>", { noremap = true, silent = true })
map("n", "<leader>sy", ":SymbolsOutline<CR>")

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

-- terminal
-- map("t", "C-j", "<C-\\><C-N><C-w>j")
-- map("t", "C-k", "<C-\\><C-N><C-w>k")
-- map("t", "C-l", "<C-\\><C-N><C-w>l")
-- map("t", "C-h", "<C-\\><C-N><C-w>h")

-- Codeium
map("i", "<C-]>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true })
-- map('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
-- map('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
-- map('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
