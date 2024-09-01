require "nvchad.options"

-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })


vim.o.scrolloff = 5
vim.o.relativenumber = true
vim.o.number = true
vim.o.autochdir = true
vim.o.cursorline = false
vim.o.whichwrap='b,s,<,>,[,]'
vim.g.indent_blankline_show_first_indent_level = true

local autocmd = vim.api.nvim_create_autocmd

autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local line = vim.fn.line "'\""
    if
      line > 1
      and line <= vim.fn.line "$"
      and vim.bo.filetype ~= "commit"
      and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
    then
      vim.cmd 'normal! g`"'
    end
  end,
})

-- neovide 
if vim.g.neovide then
  vim.o.guifont = "Monaco:h15" -- text below applies for VimScript
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
end


