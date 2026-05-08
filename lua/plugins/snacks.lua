return {
  "folke/snacks.nvim",
  priority = 1000, lazy = false,
  opts = {
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    notifier = { enabled = true },
    indent = { 
      enabled = true,
      char = "│",
      only_scope = true, -- only show indent guides of the scope
      only_current = true, -- only show indent guides in the current window
      animate = { enabled = 0, },
      scope = { enabled = false, },
      chunk = { enabled = false, },
    },
    picker = {
      enabled = true,
      --[[ Layout presets
      --  bottom, default, dropdown, ivy, ivy_split, left, right, 
      --  select, sidebar, telescope, top, vertical, vscode
      --]]
      layout = { preset = "vertical" },
      exclude = { ".git", "node_modules"}
    },
  }
}
