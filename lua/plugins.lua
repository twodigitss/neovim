return {
-- Colorschemes
  { 'rayes0/blossom.vim' },
  { "EdenEast/nightfox.nvim" },

-- UI Enhancements
  { "nvim-tree/nvim-web-devicons" },
  { "utilyre/barbecue.nvim",
    name = "barbecue", version = "*",
    opts = {}, dependencies = {"SmiteshP/nvim-navic"}},

-- LSP & Completion
  { "windwp/nvim-ts-autotag",
    opts = {per_filetype = {["html"] = {enable_close = true}}}},
  { "github/copilot.vim" },
  { 'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '*',
    opts = { keymap = { preset = 'enter' } },
    opts_extend = { "sources.default" }},

--mini.nvim
  { 'echasnovski/mini.comment', version = false,
    config = function() require('mini.comment').setup() end },
  { 'echasnovski/mini.pairs', version = false,
    config = function() require('mini.pairs').setup() end },
  { 'echasnovski/mini.pick', version = false,
    config = function() require('mini.pick').setup() end}, --install fd, ripgrep, or git
  { 'echasnovski/mini.cursorword', version = false,
    config = function() require('mini.cursorword').setup() end },
  { 'echasnovski/mini.notify', version = false,
    config = function() require('mini.notify').setup() end },
  { 'echasnovski/mini.statusline', version = false,
    config = function() require('mini.statusline').setup() end },
  { 'echasnovski/mini.indentscope', version = false,
    config = function() require('mini.indentscope').setup() end },


}

