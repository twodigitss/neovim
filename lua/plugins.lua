return{
  -- UI Enhancements
  { "slugbyte/lackluster.nvim", lazy = false, priority = 2000, opts={} },
  { 'Bekaboo/dropbar.nvim', opts={} },
  { "sphamba/smear-cursor.nvim", opts = {} },
  { 'm-demare/hlargs.nvim' },
  { "brenoprata10/nvim-highlight-colors",
    opts = { render = 'virtual', virtual_symbol = '■' }
  },
  { "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    enabled = false,
    config = function()
      require("hlchunk").setup({
        chunk = { enable = true },
        indent = { enable = true }
      })
    end
  },

  --mini.nvim
  { 'echasnovski/mini.comment', version = false, opts={} },
  { 'echasnovski/mini.pairs', version = false, opts={} },
  { 'echasnovski/mini.cursorword', version = false, opts={} },
  { 'echasnovski/mini.diff', version = false, opts={} },

  -- Thinkering
  -- { 'stevearc/oil.nvim', lazy = false,
  --   opts = {
  --     columns = { "icon", },
  --     view_options = { show_hidden = true, }
  --   },
  --   dependencies = { "nvim-tree/nvim-web-devicons" },
  -- },

  -- Completion
  { "github/copilot.vim" },
  { "windwp/nvim-ts-autotag",
    opts = {per_filetype = {["html"] = {enable_close = true}}}
  },
  { "malev/hola.nvim", desc = "rest client for nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

} --end of file

