return {
  { 'everviolet/nvim' },
  { 'alvarosevilla95/luatab.nvim',  --tabs only (no buffers)
    opts={ 
      separator = function() return ' ' end ,
      windowCount = function() return '' end,
    } 
  },

  { 'lewis6991/gitsigns.nvim', opts={} }, --git diff indicator
  { 'brenoprata10/nvim-highlight-colors', opts={} }, --for css

  { "utilyre/barbecue.nvim", opts = {}, --breadcrumbs
    name = "barbecue", version = "*", 
    dependencies = { "SmiteshP/nvim-navic", },
  },

  { 'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    opts = {},
  },

  { "folke/which-key.nvim", event = "VeryLazy", opts = {} },
  { 'nvim-mini/mini.pairs', opts={} }, --autoclose ([{}])
  { 'windwp/nvim-ts-autotag', opts={} }, -- autoclose but for html
  { "folke/todo-comments.nvim", --comment hightlighting TODO, WARN, BUG, FIX, etc.
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      signs = true,
      sign_priority = 8,
      keywords = {
        FIX =  { icon = "", color = "error", alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, },
        TODO = { icon = "󰸞", color = "info" },
        HACK = { icon = "", color = "warning" },
        WARN = { icon = "", color = "warning", alt = { "WARNING", "XXX" } },
        PERF = { icon = "󰔚", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE", "PERF" } },
        NOTE = { icon = "", color = "hint", alt = { "INFO" } },
        TEST = { icon = "", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      },
    }
  },
  

}
