return {
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua", "prettier", "clangd", "pyright", "esbonio",
  		},
  	},
  },

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc", "c", "cpp", "asm", "python"
  		},
  	},
  },

  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
      require "configs.harpoon"
    end,
  },

  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },

  {
    'RaafatTurki/hex.nvim',
    lazy = false,
    config = function ()
      require('hex').setup()
    end
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    dependencies = {"HiPhish/rainbow-delimiters.nvim"},
    lazy = false,
    config = function ()
      require "configs.indent"
    end
  },

  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true,
    opts = {}
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },

}
