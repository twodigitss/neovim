vim.cmd [[
  hi Comment cterm=italic gui=italic
  hi Keyword cterm=italic gui=italic
  highlight Folded guibg=NONE ctermbg=NONE

  highlight! link NeoTreeGitAdded NormalNC
  highlight! link NeoTreeGitConflict NormalNC
  highlight! link NeoTreeGitDeleted NormalNC
  highlight! link NeoTreeGitIgnored NormalNC
  highlight! link NeoTreeGitModified NormalNC
  highlight! link NeoTreeGitUntracked NormalNC
  highlight NeoTreeDirectoryName guifg=White

  highlight TabLineSel guifg=#121212 guibg=#92BAFF gui=bold
  highlight TabLine guifg=#f5f5f5 guibg=#14161B gui=NONE
  highlight TabLineFill guifg=NONE guibg=#1d2021 gui=NONE

  "AUTOCMDS TO REMEMBER FOLDS
  " Set a custom viewdir to avoid conflicts
  set viewdir=~/.config/nvim/.view//

  augroup remember_folds
    autocmd!
    autocmd BufWinLeave * if expand('%') != '' | mkview | endif
    autocmd BufWinEnter * if expand('%') != '' | silent! loadview | endif
    autocmd BufWritePost * if expand('%') != '' | mkview | endif
  augroup END
]]

-- Después de que cargue el colorscheme
-- vim.api.nvim_set_hl(0, "goDeclaration", { fg = "#61afef", bold = true })
-- vim.api.nvim_set_hl(0, "goDeclType", { fg = "#98c379" })
vim.api.nvim_set_hl(0, "Keyword", { fg = "#92BAFF", bold = true })

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

