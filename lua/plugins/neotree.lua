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
      width = 30,
      position = "left",
    },
    default_component_configs = {
      indent = {
        expander_collapsed = "", --
        expander_expanded = "", --
      },
      git_status = {
        --TODO:the word highligh at != unchanged files
        use_git_status_colors = false,
      }
    }
  },
}
