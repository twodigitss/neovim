return {
"nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      disable_netrw = true, --true
      hijack_cursor = true, --true
      sync_root_with_cwd = true,
      filters = { dotfiles = true },
      sort = {
        -- sorter = "case_sensitive",
        folders_first = true,
      },
      update_focused_file = {
        enable = true,
        update_root = false, --false (if folds act weird do smth)
      },
      view = {
        width = 40,
        preserve_window_proportions = true,
        side = "right",
      },
      renderer = {
        root_folder_label = false,
        highlight_git = false, --true
        group_empty = true,
        indent_markers = { enable = true },
        indent_width = 2,
        icons = {
          web_devicons = {
            file = {
              -- enable = true,
              ----true works for white themes, false for dark themes
              color = false,
            },
            -- folder = {
            --   enable = false,
            --   color = true, --false
            -- },
          },
          glyphs = {
            default = "",
            bookmark = "󰆤",
            folder = {
              default = "",
              open = "",
              empty = "",
              empty_open = "",
            },
            git = {
              unmerged = "",
              unstaged = "*",
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
