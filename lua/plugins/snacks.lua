return {
  "folke/snacks.nvim",
  priority = 1000, lazy = false,
  opts = {
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    notifier = { enabled = true },
    indent = { enabled = true },
    picker = {
      enabled = true,
      layout = { preset = "select" },
      exclude = { ".git", "node_modules"}
    },
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
  }
