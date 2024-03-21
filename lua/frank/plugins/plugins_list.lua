local plugins = {
	{ "lewis6991/gitsigns.nvim", },

    { "nvim-tree/nvim-web-devicons" },

    { 'numToStr/Comment.nvim', lazy = false, },

    { "rose-pine/neovim", name = "rose-pine", lazy = false },

    { "williamboman/mason.nvim", dependencies = { "williamboman/mason-lspconfig.nvim", } },

	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			require("nvim-treesitter.install").update({ with_sync = true })()
		end,
    },

    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },

    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
    },

    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
    },

    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = {
            'nvim-telescope/telescope-fzf-native.nvim', build = 'make',
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons'
        },
    },

    {
        "neovim/nvim-lspconfig",
        event = {
            "BufReadPre",
            "BufNewFile"
        },

        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            {
                "antosha417/nvim-lsp-file-operations",config = true
            }
        }
    },

    {
        "hrsh7th/nvim-cmp",
        lazy = false;
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "L3MON4D3/luasnip",
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets"
        },
    },

    {
        "windwp/nvim-autopairs",
        opts = {
            fast_wrap = {},
            disable_filetype = { "TelescopePrompt", "vim" },
        },
        config = function(_, opts)
            require("nvim-autopairs").setup(opts)
            -- setup cmp for autopairs
            local cmp_autopairs = require "nvim-autopairs.completion.cmp"
            require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
    },

    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    },
}

return plugins
