local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    markdown = { "prettier" },
    rust = { "rustfmt" },
    c = { "clang_format_4" },
    cpp = { "clang_format_4" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },

  formatters = {
    clang_format_4 = {
      command = "clang-format",
      args = { "--style={BasedOnStyle: Google, IndentWidth: 4, TabWidth: 4, UseTab: Never}" },
    },
  },
}

return options
