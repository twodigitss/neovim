local leftSeparator = '';
local rightSeparator = '█';

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Optional for icons
  opts = {
    options = {
      disabled_filetypes = { 'packer', 'NvimTree' },
      globalstatus = true,
      icons_enabled = true,
      theme = 'auto',
      component_separators = { left = "", right = ""},
      section_separators = { left = leftSeparator, right = '█'},
      --  left    █   //  right    █ 
    },
    sections = {
      lualine_a = {{'mode', icon = '', separator = { right = leftSeparator}}},
      lualine_b = {{
        'branch', 'diff', 'diagnostics', 
        icon = '',
        separator = { right = leftSeparator},
        draw_empty = true,
        color = { bg = '#353535' }
      }},
      lualine_c = {'filename'},
      lualine_x = {'encoding', 'fileformat', 'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    }
  },
  
}
