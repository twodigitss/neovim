return{
  -- Colorschemes
  { "slugbyte/lackluster.nvim", lazy = false, priority = 1000, opts={} },

  --mini.nvim
  { 'echasnovski/mini.comment', version = false, opts={} },
  { 'echasnovski/mini.pairs', version = false, opts={} },
  { 'echasnovski/mini.cursorword', version = false, opts={} },

  -- UI Enhancements
  { 'xiyaowong/transparent.nvim', opts={} },
  { 'Bekaboo/dropbar.nvim', opts={} },
  { 'lewis6991/gitsigns.nvim' },
  { "brenoprata10/nvim-highlight-colors",
    opts = { render = 'virtual', virtual_symbol = '■' }
  },
  -- COOL PLUGIN NGL
  -- { "shellRaining/hlchunk.nvim",
  --   event = { "BufReadPre", "BufNewFile" },
  --   config = function()
  --     require("hlchunk").setup({
  --       chunk = { enable = true },
  --       indent = { enable = true }
  --     })
  --   end
  -- },

  -- Completion
  { "windwp/nvim-ts-autotag",
    opts = {per_filetype = {["html"] = {enable_close = true}}}
  },
  { "malev/hola.nvim", desc = "rest client for nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

} --end of file

