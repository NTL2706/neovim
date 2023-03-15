local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end


vim.cmd [[packadd packer.nvim]] --

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  -- theme
  use({
    "neanias/everforest-nvim",
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require("everforest").setup()
    end,
  })
  -- use 'dracula/vim' -- theme for vim
  use 'nvim-lua/plenary.nvim'     -- Common utilities
  use 'nvim-lualine/lualine.nvim' -- Statusline  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'akinsho/nvim-bufferline.lua'
  -- LSP
  use "neovim/nvim-lspconfig"           -- enable LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- LSP diagnostics and code actions
  use 'MunifTanjim/prettier.nvim'       -- plugin for neovim's bult-in

  use 'onsails/lspkind-nvim'            -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer'              -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'            -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'                -- Completion
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'L3MON4D3/LuaSnip'
  -- Command code
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use "lukas-reineke/indent-blankline.nvim"
  --
  -- seaech file and word
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'norcalli/nvim-colorizer.lua'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- git plugin
  use 'lewis6991/gitsigns.nvim'
  use {
    'dinhhuy258/git.nvim'
  }
end)
