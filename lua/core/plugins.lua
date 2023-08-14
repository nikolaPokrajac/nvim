local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- "ellisonleao/gruvbox.nvim", priority = 1000,
    "catppuccin/nvim", name = "catppuccin",
    {
        "folke/tokyonight.nvim",
        lazy = true,
        opts = { style = "moon" },
    },

    'nvim-lualine/lualine.nvim',

    'nvim-tree/nvim-tree.lua',

    'nvim-treesitter/nvim-treesitter',

    'tpope/vim-commentary',

    'tpope/vim-fugitive',

    "github/copilot.vim",

    "williamboman/mason.nvim",

    {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.0',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
    },

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            build = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
        }
    },

    "theprimeagen/harpoon",

    'nvim-tree/nvim-web-devicons',

    'hrsh7th/nvim-cmp',

    'NvChad/nvim-colorizer.lua',

    "lukas-reineke/indent-blankline.nvim",

    'lewis6991/gitsigns.nvim',

    'windwp/nvim-autopairs',

    'christoomey/vim-tmux-navigator',

    'ThePrimeagen/vim-be-good',

    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = {},

    "tpope/vim-fugitive",
}

local opts = {}

require("lazy").setup(plugins, opts)
