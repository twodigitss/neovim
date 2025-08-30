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
      component_separators = { left = " ", right = " "},
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
        -- color = { bg = '#191919' }
      }},
      lualine_c = {{
        'filename',
        icon = '',
      }},
      lualine_x = {
        { 'diagnostics',
          draw_empty = true
        },
        { 'diff',
          icon = '',
          -- color = { bg = '#1e1e1e' },
          draw_empty = true,
        },
        { 'branch',
          icon = '',
          draw_empty = true,
          -- color = { bg = '#191919' },
        },
      },
      lualine_y = {
        'encoding', 'fileformat',
      },
      lualine_z = {'location', 'progress'}
    }
  },

}
