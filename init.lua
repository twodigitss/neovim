vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
require("config")

vim.lsp.enable({
  'lua_ls',
  'vtsls',
  'pyright',
  'eslint',
  'angularls',
  'gopls',
  'rust-analyzer',
  'jdtls'
})
