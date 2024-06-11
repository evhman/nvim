return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier",
        "clangd"
  		},
  	},
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "bash", "c", "cpp",
        "python"
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
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },

  {
    'ggandor/leap.nvim',
    event = 'BufRead',
    dependencies = {"tpope/vim-repeat"},
    config = function ()
      require('leap').add_default_mappings()
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
    'RaafatTurki/hex.nvim',
    lazy = false,
    config = function ()
      require('hex').setup()
    end
  },

  {
    'nvim-pack/nvim-spectre',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'BurntSushi/ripgrep',
      'nvim-tree/nvim-web-devicons'
    },
    config = function ()
      require "configs.spectre"
    end
  }
}
