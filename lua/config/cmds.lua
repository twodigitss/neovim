-- this file gotta be called after opts.lua
-- this are loaded each time the colorscheme changes
local function set_default_hl()
  if(vim.g.colors_name == "default") then 
    vim.api.nvim_set_hl(0, "Comment", { fg = "#8891a8", italic = true })
    vim.api.nvim_set_hl(0, "Folded", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "Keyword", { fg = "#92BAFF", bold = true, italic = true })
    vim.api.nvim_set_hl(0, "@variable", { fg = "#B3D8FE", bold = true })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#111217', fg = '#abb2bf' })
    vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none', fg = '#5c6370' })

    vim.api.nvim_set_hl(0, "SnacksPicker", { bg = "#111217" })
    vim.api.nvim_set_hl(0, "SnacksPickerBorder", { fg = "#B3D8FE", bg = "none" } )

    vim.api.nvim_set_hl(0, "BlinkCmpMenu", { bg = "#111217" })
    vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { fg = "#121212", bg = "#92BAFF", bold = true })
    vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { fg = "#5C6370", bg = "none" } )
    vim.api.nvim_set_hl(0, "BlinkCmpKind", { fg = "#B3D8FE", bg = "none" } )
    vim.api.nvim_set_hl(0, "BlinkCmpScrollbarThumb", { bg = "#5C6370" })

    vim.api.nvim_set_hl(0, "TabLineSel", { fg = "#121212", bg = "#92BAFF", bold = true })
    vim.api.nvim_set_hl(0, "TabLine", { fg = "#f5f5f5", bg = "#14161B" })
    vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#1d2021" })

    vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "White" })
    vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { link = "NormalNC" })
    vim.api.nvim_set_hl(0, "NeoTreeGitConflict", { link = "NormalNC" })
    vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { link = "NormalNC" })
    vim.api.nvim_set_hl(0, "NeoTreeGitIgnored", { link = "NormalNC" })
    vim.api.nvim_set_hl(0, "NeoTreeGitModified", { link = "NormalNC" })
    vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { link = "NormalNC" })
    vim.api.nvim_set_hl(0, "MiniStarterItemPrefix", { fg = "#92BAFF" })
    vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#54546d", bg = "NONE" })

  end
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = set_default_hl,
})

set_default_hl()

-- Folds Persistence: Save and load views automatically
vim.opt.viewdir = vim.fn.expand("~/.config/nvim/.view//")
local fold_group = vim.api.nvim_create_augroup("remember_folds", { clear = true })

vim.api.nvim_create_autocmd({ "BufWinLeave", "BufWritePost" }, {
  group = fold_group,
  pattern = "?*",
  command = "silent! mkview",
})

vim.api.nvim_create_autocmd("BufWinEnter", {
  group = fold_group,
  pattern = "?*",
  command = "silent! loadview",
})

-- LSP progress floating notification
vim.api.nvim_create_autocmd("LspProgress", {
  ---@param ev {data: {client_id: integer, params: lsp.ProgressParams}}
  callback = function(ev)
    local spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
    vim.notify(vim.lsp.status(), "info", {
      id = "lsp_progress",
      title = "LSP",
      opts = function(notif)
        notif.icon = ev.data.params.value.kind == "end" and " "
        or spinner[math.floor(vim.uv.hrtime() / (1e6 * 80)) % #spinner + 1]
      end,
    })
  end,
})

-- replacing Diagnostic with icons instead of single chars.
vim.diagnostic.config({
  virtual_text = false, 
  virtual_lines = { current_line = true }, 
  float = { border = "rounded"},
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR]   = "",
      [vim.diagnostic.severity.WARN]    = "",
      [vim.diagnostic.severity.HINT]    = "",
      [vim.diagnostic.severity.INFO]    = "",
    },
    linehl = {},
    numhl = {},
  },
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
