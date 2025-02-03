-- Atajos de teclado
  vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<C-t>', ':tabnew | NvimTreeOpen<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<Tab>', ':tabnext<CR>', { noremap = true, silent = true })
  -- vim.api.nvim_set_keymap('n', '<C-k>', ':Telescope colorscheme<CR>', { noremap = true, silent = true })
  -- vim.api.nvim_set_keymap('n', '<A-e>', ':Telescope symbols<CR>', { noremap = true, silent = true })
  -- vim.api.nvim_set_keymap('n', '<A-f>', ':Telescope find_files<CR>', { noremap = true, silent = true })
  
  vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap=true, silent=true })
  vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap=true, silent=true })
  vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap=true, silent=true })
  vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap=true, silent=true })
  vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap=true, silent=true })

-- Configuración de colores y apariencia
  vim.cmd('syntax enable')
  vim.o.termguicolors = true
  vim.o.background = 'dark'
  vim.cmd('colorscheme vscode')
  vim.opt.fillchars = { eob = " " }
  vim.opt.fillchars:append({ vert = " " }) --│

-- OPCIONES GENERALES
  vim.o.mouse = 'a'
  vim.opt.number = true
  vim.opt.relativenumber = true
  vim.o.smartcase = true
  vim.o.smartindent = true
  vim.o.smarttab = true
  vim.o.copyindent = true
  vim.o.compatible = false
  vim.o.backup = false
  vim.wo.cursorline = true
  vim.o.swapfile = false
  vim.o.showmatch = true
  vim.o.expandtab = true
  vim.o.tabstop = 2
  vim.o.shiftwidth = 2
  vim.o.autoindent = true
  vim.o.incsearch = true
  vim.o.ignorecase = true
  vim.o.showmode = true
  vim.o.hlsearch = true
  vim.o.wildmenu = false
  vim.o.wildmode = 'list:longest,full'
  --
  -- Configuración de plegado (fold)
  vim.o.foldenable = true
  vim.o.foldmethod = 'manual'
  vim.o.foldnestmax = 10
  vim.o.foldlevelstart = 2

-- Abrir NERDTree si solo se abre un archivo y no es un directorio
  vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    callback = function()
      if vim.fn.argc() == 1 and vim.fn.isdirectory(vim.fn.argv(0)) == 0 then
        vim.cmd("NvimTreeOpen")
        vim.cmd("wincmd p")
      end
    end
  })
  
  -- Cerrar NvimTree si es la única ventana abierta
  vim.api.nvim_create_autocmd("BufEnter", {
      pattern = "*",
      callback = function()
      -- Verifica si NvimTree es la única ventana abierta
      if vim.fn.winnr('$') == 1 and require'nvim-tree.view'.is_visible() then
          vim.cmd("q")
      end
  end
  })

  -- Enable italics for comments and keywords
  vim.cmd [[
    hi Comment cterm=italic gui=italic
    hi Keyword cterm=italic gui=italic
  ]]
