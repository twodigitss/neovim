-- FILES
vim.o.backup = false
vim.o.swapfile = false

-- VISUALS
vim.opt.scrolloff = 1
vim.o.showtabline = 2
vim.o.tabline = "%!v:lua.MyTabLine()"
vim.cmd('colorscheme carbonfox')
  vim.cmd('syntax enable')

vim.opt.fillchars = { eob = " " }
vim.opt.fillchars:append({ vert = "|", fold = " " }) --│
vim.g.mapleader = " "

vim.o.showmode = true
vim.opt.number = true
  vim.opt.relativenumber = true
vim.wo.cursorline = false --true
vim.o.showmatch = true
vim.o.autoindent = false --true
vim.o.expandtab = true
vim.o.incsearch = true
  vim.o.hlsearch = true
  vim.o.wildmenu = false
  vim.o.wildmode = 'list:longest,full'

-- UTILS
vim.o.mouse = 'a'
vim.o.compatible = false
vim.o.ignorecase = true
  vim.o.wildignorecase = true
  vim.o.smartcase = true
vim.o.smartindent = false --true
  vim.o.copyindent = true
vim.o.smarttab = true
  vim.o.tabstop = 2
  vim.o.shiftwidth = 2

-- FOLDS
vim.o.viewoptions = 'folds,cursor'
vim.o.sessionoptions = 'folds'
vim.o.foldenable = true
  vim.o.foldmethod = 'manual'
  vim.o.foldnestmax = 10
  vim.o.foldcolumn = '0' --width of fold column shown sidebar
  vim.opt.foldtext = "getline(v:foldstart) .. '...'"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 8

