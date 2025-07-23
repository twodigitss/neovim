return {
-- Colorschemes
  { "slugbyte/lackluster.nvim", lazy = false, priority = 1000, opts={} },
  -- { "webhooked/kanso.nvim", lazy = false, priority = 1000 },

-- UI Enhancements
  { 'xiyaowong/transparent.nvim', opts={} },
  { 'Bekaboo/dropbar.nvim', opts={} },
  { 'lewis6991/gitsigns.nvim' },
  { "brenoprata10/nvim-highlight-colors",
    opts = { render = 'virtual', virtual_symbol = '■' }
  },

-- Completion
{ "windwp/nvim-ts-autotag",
    opts = {per_filetype = {["html"] = {enable_close = true}}}
  },
  { "malev/hola.nvim", desc = "rest client for nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  { 'saghen/blink.cmp', version = '*',
    dependencies = { 'rafamadriz/friendly-snippets' },
    opts = {
      keymap = { preset = 'enter' },
      sources = {default = { 'lsp', 'path', 'snippets', 'buffer' }},
      completion = {
        menu = {
          border = 'single',
          draw = {
            columns = {
              { "label", "label_description", gap = 3 },
              { "kind_icon", "kind", gap = 1 }
            },
          }
        },
        documentation = { auto_show = true, window = { border = 'single' } },
      },
    },
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
      input = { enabled = true },
      picker = { enabled = true, layout = { preset = "select" }, exclude = { ".git", "node_modules"} },
      dashboard = {
        enabled = true,
        width = 70,
        pane_gap = 2,
        sections = {
          { section = "startup" },
          { section = "header" },
          { section = "keys", gap = 1, padding = 3 },
        },
        preset = {
          keys = {
            { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = " ", key = "i", desc = "New File", action = ":ene | startinsert" },
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = "󰘎 ", key = "s", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = "󰈆 ", key = "q", desc = "Quit", action = ":qa" },
            -- { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          },
          header=[[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠖⠈⠉⠑⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠃⠀⣴⣚⣦⠀⢱⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣆⣴⠛⡿⡽⠲⣼⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣀⡠⠤⢒⡺⠉⠉⡹⢋⠏⢸⢏⠳⣮⣕⣯⣽⣯⣽⠢⠤⠤⢀⣀⣠⠄
⠸⣉⠉⠁⢀⡀⠁⠀⠀⠀⠘⠦⠼⡤⢼⠘⣄⢸⠁⢰⠛⡇⠀⠙⠢⡀⠀⡸⠁⡜
⠀⠈⠛⠭⣥⠤⠤⠒⠀⢀⡀⠀⢠⠃⡼⠂⠈⠚⡤⣈⣦⠇⠀⠀⠀⠈⢲⡃⡔⠁
⠀⠀⠀⠀⠈⠑⠒⠒⠛⠓⠒⠊⡱⠋⡀⠀⠀⠀⢱⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠒⡻⢁⡴⠁⠀⡞⠀⠈⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣇⠔⢡⠎⠀⠀⢰⠁⡐⠀⡽⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⡞⠁⡰⠁⠀⠀⢀⡎⠀⡧⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣇⠜⠀⠀⠀⠀⣜⠤⠚⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⡠⠋⠀⠀⠀⣠⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣞⠤⠖⠈⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
]],
},
      },
    },
  },

} --end of file

