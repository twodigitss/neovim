-- TERMINAL
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true }) --fixed default behavior

-- TAB / WINDOWS
vim.api.nvim_set_keymap('n', '<leader><Right>', ':vsplit<CR>',  { noremap = true, silent = true, desc = "Split screen vertically" })
vim.api.nvim_set_keymap('n', '<leader><Down>', ':split<CR>',   { noremap = true, silent = true, desc = "Split screen horizontally" })
vim.api.nvim_set_keymap('n', '<C-t>', ':tabnew<CR>',  { noremap = true, silent = true, desc = "New tab" })
vim.api.nvim_set_keymap('n', '<Tab>', ':tabnext<CR>', { noremap = true, silent = true, desc = "Next tab" })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':tabprevious<CR>', { noremap = true, silent = true, desc = "Prev tab" })
--
-- VSCODE LIKE KEYSTROKES
vim.api.nvim_set_keymap("n", "<C-q>", "exit<CR>",      { noremap = true, silent = true, desc = "Quit" })
vim.api.nvim_set_keymap("n", "<C-Q>", ":q!<CR>",     { noremap = true, silent = true, desc = "Force quit" })

-- PLUGINS
vim.api.nvim_set_keymap('n', '<C-n>', ':Neotree toggle<CR>', { noremap = true, silent = true, desc = "Toggle NeoTree" })
vim.api.nvim_set_keymap('n', '<leader>f', ':lua Snacks.picker.files()<CR>', { noremap = true, silent = true, desc = "Pick files" })
vim.api.nvim_set_keymap('n', '<leader>g', ':lua Snacks.picker.grep()<CR>', { noremap = true, silent = true, desc = "Search text"})
vim.api.nvim_set_keymap('n', '<leader>kt', ':lua Snacks.picker.colorschemes()<CR>', { noremap = true, silent = true, desc = "ColorschemeSearch texts"})
vim.api.nvim_set_keymap('n', '<leader>z', ':lua Snacks.zen()<CR>', { noremap = true, silent = true, desc="Zen Mode" })

-- LSP
vim.api.nvim_set_keymap('n', '<leader>[', '<cmd>lua vim.diagnostic.jump({ count = -1 })<CR>',  { noremap = true, silent = true, desc="Prev Diagnostic" })
vim.api.nvim_set_keymap('n', '<leader>]', '<cmd>lua vim.diagnostic.jump({ count = 1 })<CR>',  { noremap = true, silent = true, desc="Next Diagnostic" })
vim.api.nvim_set_keymap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>',  { noremap = true, silent = true, desc="Next Diagnostic" })
vim.api.nvim_set_keymap('n', '<leader>a', ':lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true, desc="LSP Actions" })
vim.api.nvim_set_keymap('n', '<leader>lr', ':Lazy sync<CR>', { noremap = true, silent = true, desc="Sync Lazy.nvim" })
