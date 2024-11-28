local M = {
  ensure_installed = {
    "lua-language-server", -- lua LSP
    "stylua", -- lua formatter
    "bash-language-server", -- bash LSP
    "vtsls", -- ts, js LSP
    "html-lsp", -- html LSP
    "css-lsp", -- css LSP
    "prettier", -- prettier formatter: html, css, json, yaml, markdown
    "python-lsp-server", -- python LSP & formatter
    "basedpyright", -- python LSP
    "clangd", -- c/c++ LSP
    -- "r_language_server",         -- R LSP
    "awk-language-server", -- awk LSP
    "dockerfile-language-server", -- dockerfile LSP
    "typst-lsp", -- typst LSP
    "gopls", -- go LSP
    "julia-lsp", -- julia LSP
  },
  auto_update = false,
  run_on_start = true,
  -- start_delay = 3000,
  -- debounce_hours = 5,
  integrations = {
    ["mason-lspconfig"] = true,
    ["mason-null-ls"] = true,
    ["mason-nvim-dap"] = true,
  },
}

return M
