return {
-- Colorschemes
  { "slugbyte/lackluster.nvim",
    lazy = false, priority = 1000, opts={}
  },

-- UI Enhancements
  { "nvim-tree/nvim-web-devicons" },
  { 'Bekaboo/dropbar.nvim', opts={} },
  { 'lewis6991/gitsigns.nvim' },
  { "brenoprata10/nvim-highlight-colors",
    opts = { render = 'virtual', virtual_symbol = '■' }
  },
  { "nvzone/floaterm",
    dependencies = "nvzone/volt",
    opts = {}, cmd = "FloatermToggle",
  },

  -- Completion
  { "windwp/nvim-ts-autotag",
    opts = {per_filetype = {["html"] = {enable_close = true}}}
  },
  { 'saghen/blink.cmp', version = '*',
    dependencies = { 'rafamadriz/friendly-snippets' },
    opts = { keymap = { preset = 'enter' } },
    opts_extend = { "sources.default" }
  },

--mini.nvim
  { 'echasnovski/mini.comment', version = false, opts={} },
  { 'echasnovski/mini.pairs', version = false, opts={} },
  { 'echasnovski/mini.cursorword', version = false, opts={} },

--snacks
  { "folke/snacks.nvim",
    priority = 1000, lazy = false,
    opts = {
      quickfile = { enabled = true },
      statuscolumn = { enabled = true },
      notifier = { enabled = true },
      indent = { enabled = true },
      picker = { enabled = true, layout = { preset = "select" } },
      dashboard = {
        enabled = true,
        preset={
          header=[[
GWYNE'S NEOVIM CONFIGURATION

⠄⠄⠄⠄⢠⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣯⢻⣿⣿⣿⣿⣆⠄⠄⠄
⠄⠄⣼⢀⣿⣿⣿⣿⣏⡏⠄⠹⣿⣿⣿⣿⣿⣿⣿⣿⣧⢻⣿⣿⣿⣿⡆⠄⠄
⠄⠄⡟⣼⣿⣿⣿⣿⣿⠄⠄⠄⠈⠻⣿⣿⣿⣿⣿⣿⣿⣇⢻⣿⣿⣿⣿⠄⠄
⠄⢰⠃⣿⣿⠿⣿⣿⣿⠄⠄⠄⠄⠄⠄⠙⠿⣿⣿⣿⣿⣿⠄⢿⣿⣿⣿⡄⠄
⠄⢸⢠⣿⣿⣧⡙⣿⣿⡆⠄⠄⠄⠄⠄⠄⠄⠈⠛⢿⣿⣿⡇⠸⣿⡿⣸⡇⠄
⠄⠈⡆⣿⣿⣿⣿⣦⡙⠳⠄⠄⠄⠄⠄⠄⢀⣠⣤⣀⣈⠙⠃⠄⠿⢇⣿⡇⠄
⠄⠄⡇⢿⣿⣿⣿⣿⡇⠄⠄⠄⠄⠄⣠⣶⣿⣿⣿⣿⣿⣿⣷⣆⡀⣼⣿⡇⠄
⠄⠄⢹⡘⣿⣿⣿⢿⣷⡀⠄⢀⣴⣾⣟⠉⠉⠉⠉⣽⣿⣿⣿⣿⠇⢹⣿⠃⠄
⠄⠄⠄⢷⡘⢿⣿⣎⢻⣷⠰⣿⣿⣿⣿⣦⣀⣀⣴⣿⣿⣿⠟⢫⡾⢸⡟⠄.
⠄⠄⠄⠄⠻⣦⡙⠿⣧⠙⢷⠙⠻⠿⢿⡿⠿⠿⠛⠋⠉⠄⠂⠘⠁⠞⠄⠄⠄
⠄⠄⠄⠄⠄⠈⠙⠑⣠⣤⣴⡖⠄⠿⣋⣉⣉⡁⠄⢾⣦⠄⠄⠄⠄⠄⠄⠄⠄
          ]]
        }
      },
    },
  },

} --end of file

