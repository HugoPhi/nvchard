-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local nvlsp = require "nvchad.configs.lspconfig"
local servers = {
  "html",
  "cssls",
  -- "basedpyright",
  "pylsp",
  "clangd",
  "r_language_server",
  "bashls",
  "awk_ls",
  "dockerls",
  "sqls",
  "rust_analyzer",
  "typst_lsp",
  "gopls",
  "julials",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

lspconfig.pylsp.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = { "E501", "E731" },
          maxLineLength = 1000,
        },
        mccabe = {
          enabled = false,
        },
      },
    },
  },
}

require("lspconfig").clangd.setup {
  cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
  init_options = {
    fallbackFlags = { '-std=c++20' },
  },
}
