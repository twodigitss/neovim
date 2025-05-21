return {
-- Colorschemes
  { 'rayes0/blossom.vim' },
  { "EdenEast/nightfox.nvim" },
  { "webhooked/kanso.nvim", lazy = false },

-- UI Enhancements
  { "nvim-tree/nvim-web-devicons" },
  { 'Bekaboo/dropbar.nvim', opts={} },
  { 'lewis6991/gitsigns.nvim' },
  { "brenoprata10/nvim-highlight-colors",
    opts = { render = 'virtual', virtual_symbol = '■' }
  },
  { "lukas-reineke/indent-blankline.nvim",
    main = "ibl", opts = {},
  },
  { "CRAG666/betterTerm.nvim",
    opts = {
      position = "bot",
      size = 15,
      prefix = "Term_",
      startInserted = true,
      show_tabs = true,
      new_tab_mapping = "<C-t>",      -- Create new terminal
      jump_tab_mapping = "<C-$tab>",  -- Jump to tab terminal
      active_tab_hl = "TabLineSel",   -- Highlight group for active tab
      inactive_tab_hl = "TabLine",    -- Highlight group for inactive tabs
      new_tab_hl = "BetterTermSymbol", -- Highlight group for new term
      new_tab_icon = "+"              -- Icon for new term
    },
  },

-- Completion
  { "windwp/nvim-ts-autotag",
    opts = {per_filetype = {["html"] = {enable_close = true}}}
  },
  { "github/copilot.vim" },
  { 'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '*',
    opts = { keymap = { preset = 'enter' } },
    opts_extend = { "sources.default" }
  },

--mini.nvim
  { 'echasnovski/mini.comment', version = false, opts={} },
  { 'echasnovski/mini.pairs', version = false, opts={} },
  --install fd, ripgrep, or git
  { 'echasnovski/mini.pick', version = false, opts={} },
  { 'echasnovski/mini.cursorword', version = false, opts={} },
  { 'echasnovski/mini.notify', version = false, opts={} },

--snacks
  { "folke/snacks.nvim",
    priority = 1000, lazy = false,
    opts = {
      quickfile = { enabled = true },
      statuscolumn = { enabled = true },
    },
  },

} --end of file

