return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "c",
        "cpp",
        "asm",
        "python",
        "bash",
      },
    },
  },

  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require "configs.harpoon"
    end,
  },

  {
    "RaafatTurki/hex.nvim",
    lazy = false,
    config = function()
      require("hex").setup()
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "HampusHauffman/block.nvim",
    config = function()
      require("block").setup {
        automatic = true,
      }
    end,
    lazy = false,
  },
}
