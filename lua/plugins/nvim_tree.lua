return {
"nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      disable_netrw = true,
      hijack_cursor = true,
      sync_root_with_cwd = true,
      filters = { dotfiles = true },
      sort = {
        sorter = "case_sensitive",
        folders_first = true,
      },
      update_focused_file = {
        enable = true,
        update_root = false,
      },
      view = {
        width = 30,
        preserve_window_proportions = true,
        side = "left",
      },
      renderer = {
        root_folder_label = false,
        highlight_git = true,
        group_empty = true,
        indent_markers = { enable = true },
        indent_width = 2,
        icons = {
          web_devicons = {
            file = {
              enable = true,
              color = false,
            },
            folder = {
              enable = false,
              color = true,
            },
          },
          glyphs = {
            default = "󰈚",
            folder = {
              -- default = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
            },
            git = { 
              unmerged = "",
              unstaged = "",
              staged = "✓",
              renamed = "➜",
              untracked = "+",
              deleted = "-",
              ignored = "◌",
            },
          },
        },
      },
    })
  end,
}
