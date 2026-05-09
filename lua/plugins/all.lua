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

}
