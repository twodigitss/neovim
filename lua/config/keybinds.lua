-- TERMINAL
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>',                              { noremap = true }) --fixed default behavior

-- COMMENTING ON REACT COMPONENTS
vim.api.nvim_set_keymap('n', '<leader>c', '_Di{}<Esc>i/**/<Esc>hhp_v=',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>C', '_xxx$xxxx_v=',  { noremap = true, silent = true })

-- TAB / WINDOWS
vim.api.nvim_set_keymap('n', '<leader>v', ':vsplit<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>s', ':split<CR>',   { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-t>',     ':tabnew<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Tab>',     ':tabnext<CR>', { noremap = true, silent = true })

-- VSCODE LIKE KEYSTROKES
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>",       { noremap = true, silent = true })
--this is used by nvim0.11 lsp, but i dont remember what
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true, silent = true }) 
vim.api.nvim_set_keymap("n", "<C-z>", "u",            { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-y>", "<C-r>",        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-q>", ":q <CR>",      { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Q>", ":q! <CR>",     { noremap = true, silent = true })

-- SWITCHING SPLITS
vim.keymap.set("n", "<C-Left>",   "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Down>",   "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Up>",     "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Right>",  "<C-w>l", { noremap = true, silent = true })

-- PLUGINS
vim.api.nvim_set_keymap('n', '[d',        '<cmd>lua vim.diagnostic.goto_prev()<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']d',        '<cmd>lua vim.diagnostic.goto_next()<CR>',  { noremap = true, silent = true })

local betterTerm = require('betterTerm')
vim.keymap.set("n", "<leader>;", betterTerm.open, { desc = "Open terminal"})
vim.keymap.set("t", "<C-t>", betterTerm.select, { desc = "Select terminal"})

vim.api.nvim_set_keymap('n', '<C-n>',     ':Neotree toggle<CR>',                      { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>f', ':lua Snacks.picker.files(opts)<CR>',       { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>g', ':lua Snacks.picker.grep(opts)<CR>',       { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>m', ':lua Snacks.picker.marks(opts)<CR>',       { noremap = true, silent = true })

vim.keymap.set('n', '<leader>dd', function() Snacks.dim.enable() end, { desc = 'Dim enable' })
vim.keymap.set('n', '<leader>du', function() Snacks.dim.disable() end, { desc = 'Dim disable' })

