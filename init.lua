vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
require("config")

vim.lsp.enable({
  'vtsls',
  'pyright',
  'angularls',
  'gopls',
  "postgres_lsp",
  "tailwind",
})
