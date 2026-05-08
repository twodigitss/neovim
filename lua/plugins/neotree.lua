return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = true,
  branch = "v3.x", lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    sources = {
      "filesystem", "buffers", "git_status"
    },
    source_selector = {
      winbar = true,
      statusline = true
    },
    filesystem = {
      follow_current_file = { enabled = true },
    },
    window = {
      width = 33,
      position = "left",
    },
    default_component_configs = {
      indent = {
        expander_collapsed = "", --
        expander_expanded = "", --
      },
      diagnostics = {
        symbols = {
          hint = "",
          info = "󰙎",
          warn = "",
          error = "",
        },
      },
      modified = {
        symbol = "",
        highlight = "NeoTreeModified",
      },
      git_status = {
        use_git_status_colors = false,
        symbols = {
          -- Change type
          added     = "✚",
          deleted   = "✖",
          modified  = "*",
          renamed   = "󰁕",
          -- Status type
          untracked = "", --
          ignored   = "󰛑", --
          unstaged  = "", --󰄱
          staged    = "󰅠", --
          conflict  = "󱇱", --
        }
      }
    },
  },
}
