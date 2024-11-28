return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    lazy = false,
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-tool-installer").setup(require("../configs/auto-mason"))
    end,
  },
  { -- Code Window
    "gorbit99/codewindow.nvim",
    lazy = false,
    config = function()
      local codewindow = require "codewindow"
      codewindow.setup {
        auto_enable = true,
        show_cursor = false,
        side = "right",
        screen_bounds = "lines", -- lines, background
        window_border = "none", -- none, single, double
      }
      codewindow.apply_default_keybinds()
    end,
  },
  -- {
  --   'wfxr/minimap.vim',
  --   build = 'cargo install --locked code-minimap',
  --   lazy = false,
  --   config = function()
  --     vim.g.minimap_width = 20
  --     vim.g.minimap_git_colors = 1
  --     vim.g.minimap_auto_start = 1
  --     vim.g.minimap_auto_start_win_enter = 1
  --     vim.g.minimap_highlight_search = 1
  --   end,
  -- },
  {
    "lukas-reineke/virt-column.nvim",
    lazy = false,
    config = function()
      require("virt-column").setup {}
    end,
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "Exafunction/codeium.vim",
    lazy = false,
    config = function()
      vim.g.codeium_enabled = true
    end,
  },
  -- {
  --   "simrat39/symbols-outline.nvim",
  --   show_guides = true,
  --   lazy = false,
  --   config = function()
  --     require("symbols-outline").setup()
  --   end
  -- },

  {
    "lukas-reineke/indent-blankline.nvim",

    config = function()
      local highlight = {
        "RainbowRed",
        "RainbowBlue",
        "RainbowYellow",
        "RainbowGreen",
        "RainbowOrange",
        "RainbowCyan",
        "RainbowViolet",
      }

      local hooks = require "ibl.hooks"
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
      end)

      require("ibl").setup { indent = { highlight = highlight } }
    end,
  },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    config = function()
      vim.g.mkdp_browser = "qutebrowser"
      vim.g.mkdp_theme = "light"
      vim.g.mkdp_auto_close = 1
      -- vim.g.mkdp_markdown_css = '/home/tibless/.config/Typora/themes/hugo.css'
    end,
  },

  {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "zathura"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup(require("../configs/nvtree"))
    end,
  },
  {
    "goolord/alpha-nvim",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local dashboard = require "alpha.themes.dashboard"
      local config = require("../configs/dashconfigs").dashconfigs.default
      local applyColors = require("../configs/dashconfigs").applyColors

      -- Buttons
      dashboard.section.buttons.val = {
        dashboard.button("n", "  New file", ":ene<CR>"),
        dashboard.button("f f", "  Find File", ":Telescope find_files<CR>"),
        dashboard.button("f o", "  Recent Files", ":Telescope oldfiles<CR>"),
        dashboard.button("t h", "󱥚  Themes", ":lua require('nvchad.themes').open()<CR>"),
        dashboard.button("c h", "  Mappings", ":NvCheatsheet<CR>"),
      }

      -- Footer
      local stats = require("lazy").stats()
      local ms = math.floor(stats.startuptime) .. " ms"
      dashboard.section.footer.val = {
        "",
        "",
        "--------------------------------------------------",
        "          Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms,
        "--------------------------------------------------",
      }

      -- Header
      require("alpha").setup(applyColors(config.logo, config.colors, config.logoColors))
    end,
  },
}
