-- TERMINAL
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true }) --fixed default behavior

-- TAB / WINDOWS
vim.api.nvim_set_keymap('n', '<leader><Right>', ':vsplit<CR>',  { noremap = true, silent = true, desc = "Split screen vertically" })
vim.api.nvim_set_keymap('n', '<leader><Down>', ':split<CR>',   { noremap = true, silent = true, desc = "Split screen horizontally" })
vim.api.nvim_set_keymap('n', '<C-t>', ':tabnew<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Tab>', ':tabnext<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<A-h>', '<C-W>> <CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<A-l>', '<C-W>< <CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<A-k>', '<C-W>+ <CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<A-j>', '<C-W>- <CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<A-=>', '<C-W>= <CR>', { noremap = true, silent = true })

-- VSCODE LIKE KEYSTROKES
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>",       { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-z>", "u",            { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-y>", "<C-r>",        { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-q>", "exit<CR>",      { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Q>", ":q!<CR>",     { noremap = true, silent = true })

-- SWITCHING SPLITS (does not work on macos)
-- vim.keymap.set("n", "<C-Left>",  "<C-w>h", { noremap = true, silent = true })
-- vim.keymap.set("n", "<C-Down>",  "<C-w>j", { noremap = true, silent = true })
-- vim.keymap.set("n", "<C-Up>",    "<C-w>k", { noremap = true, silent = true })
-- vim.keymap.set("n", "<C-Right>", "<C-w>l", { noremap = true, silent = true })

-- PLUGINS
vim.api.nvim_set_keymap('n', '<leader>z', '<cmd>lua vim.diagnostic.jump({ count = -1 })<CR>',  { noremap = true, silent = true, desc="Prev Diagnostic" })
vim.api.nvim_set_keymap('n', '<leader>x', '<cmd>lua vim.diagnostic.jump({ count = 1 })<CR>',  { noremap = true, silent = true, desc="Next Diagnostic" })
vim.api.nvim_set_keymap('n', '<leader>.', ':lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true, desc="LSP Actions" })

vim.api.nvim_set_keymap('n', '<C-n>', ':Neotree toggle<CR>', { noremap = true, silent = true })

-- all of the parenthesis had func(opts) "opts" inside
vim.api.nvim_set_keymap('n', '<leader>f', ':lua Snacks.picker.files()<CR>', { noremap = true, silent = true, desc = "Pick files" })
vim.api.nvim_set_keymap('n', '<leader>g', ':lua Snacks.picker.grep()<CR>', { noremap = true, silent = true, desc = "Search text"})
vim.api.nvim_set_keymap('n', '<leader>kt', ':lua Snacks.picker.colorschemes()<CR>', { noremap = true, silent = true, desc = "ColorschemeSearch texts"})
vim.api.nvim_set_keymap('n', '<leader>lr', ':Lazy sync<CR>', { noremap = true, silent = true, desc="Sync Lazy.nvim" })

-- HARPOON
-- vim.api.nvim_set_keymap('n', '<leader>m', ':lua Snacks.picker.marks(opts)<CR>', 
-- { noremap = true, silent = true, desc = "Marks" }
-- )
-- vim.keymap.set("n", "<leader>H", function()
--   require("harpoon"):list():add()
-- end, { desc = "Harpoon File" })
-- vim.keymap.set("n", "<leader>h", function()
--   local harpoon = require("harpoon")
--   harpoon.ui:toggle_quick_menu(harpoon:list())
-- end, { desc = "Harpoon Quick Menu" })
--
-- for i = 1, 5 do
--   vim.keymap.set("n", "<leader>" .. i, function()
--     require("harpoon"):list():select(i)
--   end, { desc = "Harpoon to File " .. i })
-- end
