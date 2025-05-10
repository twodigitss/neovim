return {
-- Colorschemes
  { 'rayes0/blossom.vim' },
  { "EdenEast/nightfox.nvim" },
  { "webhooked/kanso.nvim", lazy = false },

-- UI Enhancements
  { "nvim-tree/nvim-web-devicons" },
  { 'Bekaboo/dropbar.nvim', opts={} },
  -- { 'lewis6991/gitsigns.nvim' },
  { "brenoprata10/nvim-highlight-colors",
    opts = { render = 'virtual', virtual_symbol = '■' }
  },
  { "lukas-reineke/indent-blankline.nvim",
    main = "ibl", opts = {},
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

