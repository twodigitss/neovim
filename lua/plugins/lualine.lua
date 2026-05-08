local left  = '█'; --   █   
local right = '█'; --   █  

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Optional for icons
  opts = {
    options = {
      disabled_filetypes = { 'Neotree' }, --, 'packer', 'NvimTree'
      globalstatus = true,
      icons_enabled = true,
      -- https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
      --[[ 
          auto, 16color, ayu_dark, ayu_light, ayu_mirage, ayu, base16, codedark, dracula, everforest,
          gruvbox_dark, gruvbox_light, gruvbox, gruvbox_material, horizon, iceberg_dark, iceberg_light,
          iceberg, jellybeans, material, modus-vivendi, molokai, moonfly, nightfly, nord, OceanicNext,
          onedark, onelight, palenight, papercolor_dark, papercolor_light, papercolor, powerline, pywal,
          seoul256, solarized_dark, solarized_light, Tomorrow, Tomorrow_night, wombat.
      ]]
      theme = "modus-vivendi",
      component_separators = { left = "*", right = " "},
      section_separators = { left = left, right = right},
    },
    sections = {
      lualine_a = {{
        'mode',
        icon = '',
        separator = { right = left}
      }},
      lualine_b = {{
        'filetype',
        separator = { right = left},
        color = { bg = '#191919' }
      }},
      lualine_c = {{
        'filename',
        icon = '',
        color = { bg = '#121212' }
      }},
      lualine_x = {
        { 'diagnostics', draw_empty = false, },
        -- { 'diff', draw_empty = false, },
        { 'branch',
          icon = '󰊢',
          draw_empty = false,
          color = { bg = '#191919' },
        },
      },
      lualine_y = {
        { 'encoding', icon="", color = { bg = '#121212' } },
        { 'searchcount', draw_empty=true, color = { bg = '#121212' } },
      },
      lualine_z = {
        {'fileformat'},
        {'progress'},
      }
    }
  },

}
