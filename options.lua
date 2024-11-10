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


--indent styler
vim.api.nvim_create_autocmd({"BufEnter"}, {
  pattern = { "*.rs", "*.c", "*.cpp", "*.go", "*.java", "*.typst", "*.js", "*.py", "*.sh", "*.mysql" },
  callback = function()
    vim.o.tabstop = 4
    vim.o.shiftwidth = 4
    vim.o.softtabstop = 4
    vim.o.expandtab = true
  end
})

vim.api.nvim_create_autocmd({"BufEnter"}, {
  pattern = { "*.lua", "*.json" },
  callback = function()
    vim.o.tabstop = 2
    vim.o.shiftwidth = 2
    vim.o.softtabstop = 2
    vim.o.expandtab = true
  end
})


-- neovide 
if vim.g.neovide then
  vim.o.guifont = "Hasklug Nerd Font:h13.5" -- text below applies for VimScript
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  vim.g.neovide_transparency = 1
end


