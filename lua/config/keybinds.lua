-- TERMINAL
vim.api.nvim_set_keymap('t', '<Esc>',     '<C-\\><C-n>',                              { noremap = true }) --fixed default behavior
vim.api.nvim_set_keymap('n', '<leader>o', ':vsplit<CR><C-w>l:term<CR>',               { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>p', ':split<CR><C-w>j:resize 13<CR>:term<CR>',  { noremap = true, silent = true })

-- COMMENTING ON REACT COMPONENTS
vim.api.nvim_set_keymap('n', '<leader>c', '_Di{}<Esc>i/**/<Esc>hhp_v=',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>C', '_xxx$xxxx_v=',  { noremap = true, silent = true })

-- TAB / WINDOWS
vim.api.nvim_set_keymap('n', '<leader>e', ':Explore<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>v', ':vsplit<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>s', ':split<CR>',   { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-t>',     ':tabnew<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Tab>',     ':tabnext<CR>', { noremap = true, silent = true })

-- VSCODE LIKE KEYSTROKES
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>",       { noremap = true, silent = true })
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
vim.api.nvim_set_keymap('n', '<C-n>',     ':NvimTreeToggle<CR>',                      { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>f', ':Pick files<CR>',                          { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t', ':Twilight<CR>',                      { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gi',        '<cmd>lua vim.lsp.buf.definition()<CR>',    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'ga',        '<cmd>lua vim.lsp.buf.code_action()<CR>',   { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gd',        '<cmd>lua vim.lsp.buf.hover()<CR>',         { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gr',        '<cmd>lua vim.lsp.buf.references()<CR>',    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '[d',        '<cmd>lua vim.diagnostic.goto_prev()<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ']d',        '<cmd>lua vim.diagnostic.goto_next()<CR>',  { noremap = true, silent = true })

