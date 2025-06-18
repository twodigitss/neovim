--    left    █   //  right    █   
local left  = '█';
local right = '█';

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Optional for icons
  opts = {
    options = {
      disabled_filetypes = { 'Neotree' }, --, 'packer', 'NvimTree'
      globalstatus = true,
      icons_enabled = true,
      theme = 'auto',
      component_separators = { left = "", right = ""},
      section_separators = { left = left, right = right},
    },
    sections = {
      lualine_a = {{
        'mode',
        icon = '',
        separator = { right = left}
      }},
      lualine_b = {{
        'filetype',
        icon = '',
        separator = { right = left},
        color = { bg = '#191919' }
      }},
      lualine_c = {{
        'filename',
        icon = '',
      }},
      lualine_x = {
        { 'diagnostics',
          draw_empty = true
        },
        { 'branch',
          icon = '',
          draw_empty = true,
          color = { bg = '#2f2f2f' }
        },
        { 'diff',
          icon = '',
          color = { bg = '#191919' },
          draw_empty = true,
        },
      },
      lualine_y = {
        'encoding', 'fileformat',
      },
      lualine_z = {'location', 'progress'}
    }
  },

}
