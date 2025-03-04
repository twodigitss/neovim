return {
  -- Colorschemes
  { "sainnhe/gruvbox-material" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { 'folke/tokyonight.nvim' },
  { "decaycs/decay.nvim",
    name = "decay",
    lazy = false,
  },
  { "gmr458/vscode_modern_theme.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        -- vim.cmd.colorscheme("vscode_modern")
        require("vscode_modern").setup({
            cursorline = true,
            transparent_background = false,
            nvim_tree_darker = true,
        })
    end
  },

  -- UI Enhancements
  { "nvim-tree/nvim-web-devicons" },
  -- { "dstein65/nvim-scrollview" }, --do i really need this?
  { "RRethy/vim-illuminate" },
  { 'NvChad/nvim-colorizer.lua',
    config = function() require('colorizer').setup() end
  },
  { "lukas-reineke/indent-blankline.nvim", 
    main = "ibl",
    opts = {scope = { enabled = false }} 
  },
  { "projekt0n/circles.nvim",
    config = function()
      require("circles").setup({
        -- icons = { empty = "", filled = "", lsp_prefix = "" },
        -- lsp = true --override lsp_diagnostic virtual-text icon with `icons.lsp_prefix`
        icons = { empty = "", filled = ""},
      })
    end
  },
  { "utilyre/barbecue.nvim",
    name = "barbecue", version = "*",
    opts = {}, dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
  },

  -- Comments & Auto-close
  { "m4xshen/autoclose.nvim", opts = {} },
  { "numToStr/Comment.nvim", opts = {} },
  { 'windwp/nvim-ts-autotag', opts = {},},
  
  -- LSP & Completion
  { "neovim/nvim-lspconfig" },
  { "github/copilot.vim" },
  { "folke/todo-comments.nvim", opts = {} },
  { "lewis6991/gitsigns.nvim", opts = {} },
  { "f-person/git-blame.nvim",
    event = "VeryLazy",
    opts = {
        enabled = true,
        message_template = " <date> <author>. <<summary>> ",
        date_format = "[%Y-%m-%d]", -- template for the date, check Date format section for more options
        -- date_format = "[%Y-%m-%d %H:%M]", -- •  template for the date, check Date format section for more options
        virtual_text_column = 1,  -- virtual text start column, check Start virtual text at column section for more options
    },
  },
  
  -- CMP (Completion)
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },

}

