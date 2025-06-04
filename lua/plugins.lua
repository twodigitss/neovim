return {
-- Colorschemes
  -- { "EdenEast/nightfox.nvim" },
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
  { "CRAG666/betterTerm.nvim",
    opts = {
      position = "bot",
      size = 15,
      startInserted = false,
      show_tabs = true,
      new_tab_mapping = "<C-t>",
      new_tab_icon = "+"
    },
  },

-- Completion
  { "github/copilot.vim" },
  { "windwp/nvim-ts-autotag",
    opts = {per_filetype = {["html"] = {enable_close = true}}}
  },
  { 'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '*',
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
      dim = { enabled = true },
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

