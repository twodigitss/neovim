return {
  -- Colorschemes
  { "Mofiqul/vscode.nvim" },
  { "sainnhe/gruvbox-material" },
  { "nyoom-engineering/oxocarbon.nvim" },

  -- UI Enhancements
  { "nvim-tree/nvim-web-devicons" },
  { "dstein64/nvim-scrollview" },
  { "RRethy/vim-illuminate" },
  { "lukas-reineke/indent-blankline.nvim", 
    main = "ibl",
      ---@module "ibl"
      ---@type ibl.config
    opts = {scope = { enabled = false }} 
  },

  -- Comments & Auto-close
  { "m4xshen/autoclose.nvim", opts = {} },
  { "numToStr/Comment.nvim", opts = {}},
  { "windwp/nvim-ts-autotag", 
    opts = {
      -- enable_close = true,
      -- enable_rename = true,
      -- enable_close_on_slash = false,
      per_filetype = {
        ["html"] = {
          enable_close = true
        }
      }
    },
  },
  
  -- LSP & Completion
  { "neovim/nvim-lspconfig" },
  { "folke/todo-comments.nvim", opts = {} },
  { "lewis6991/gitsigns.nvim", opts = {} },

  -- CMP (Completion)
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },

}

