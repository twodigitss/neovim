return {
  { 'slugbyte/lackluster.nvim', opts={} }, --dark mode
  { "oskarnurm/koda.nvim", lazy = false, priority = 1000, opts={} }, --light mode

  { 'alvarosevilla95/luatab.nvim',  --tabs only (no buffers)
    opts={ separator = function() return ' ' end, } 
  },

  { 'lewis6991/gitsigns.nvim', opts={} }, --git diff indicator
  { 'brenoprata10/nvim-highlight-colors', opts={} }, --for css

  { "utilyre/barbecue.nvim", opts = {}, --breadcrumbs
    name = "barbecue", version = "*", 
    dependencies = { "SmiteshP/nvim-navic", },
  },

  { 'nvim-mini/mini.pairs', opts={} }, --autoclose ([{}])
  { 'windwp/nvim-ts-autotag', opts={} }, -- autoclose but for html
  { "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      signs = true,
      sign_priority = 8,
      keywords = {
        FIX =  { icon = " ", color = "error", alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, },
        TODO = { icon = " ", color = "info" },
        HACK = { icon = " ", color = "warning" },
        WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
        PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
        TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      },
    }
  }

}
