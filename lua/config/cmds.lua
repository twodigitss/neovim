vim.api.nvim_set_hl(0, "Comment", { fg = "#8891a8", italic = true })
vim.api.nvim_set_hl(0, "Folded", { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "Keyword", { fg = "#92BAFF", bold = true, italic = true })
vim.api.nvim_set_hl(0, "@variable", { fg = "#B3D8FE", bold = true })
-- vim.api.nvim_set_hl(0, "Normal", { bg = "#0A0A0D" })



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


-- Show errors and warnings in a floating window
vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, {
      focusable = false,
      source = "if_many",
      border = "none",
      header = "  Diagnostics:",
      prefix = " ",
      suffix = " ",
      format = function(diag)
        return " " .. diag.message .. " "
      end,
    })
  end,
})

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

