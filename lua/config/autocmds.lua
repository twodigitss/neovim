-- OPEN NVIMTREE AUTOMATICALLY WHEN OPENING A FILE
-- vim.api.nvim_create_autocmd("VimEnter", {
--   pattern = "*",
--   callback = function()
--     if vim.fn.argc() == 1 and vim.fn.isdirectory(vim.fn.argv(0)) == 0 then
--       vim.cmd("Neotree")
--       vim.cmd("wincmd p")
--     end
--   end
-- })

-- CLOSE NVIMTREE WHEN ITS THE LAST OPENED WINDOW
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    callback = function()
    local buftype = vim.api.nvim_buf_get_option(0, "filetype")
    if vim.fn.winnr('$') == 1 and buftype == "neo-tree" then
      vim.cmd("q")
    end
end
})

-- ITALICS FOR COMMENTS AND KEYWORDS
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

-- TABLINE MADE WITH LUA
function _G.MyTabLine()
  -- Colores
  vim.cmd("highlight link TabIndicator PMenu")  -- "TAB X/Y"
  vim.cmd("highlight link TabActive CursorLine")  -- Pestañas activas

  -- Indicador "TAB X/Y" con su propio color
  local s = "%#TabIndicator# TAB " .. vim.fn.tabpagenr() .. "/" .. vim.fn.tabpagenr("$") .. " %#TabLine#"

  -- Recorrer pestañas y mostrar solo nombres de archivos
  for i = 1, vim.fn.tabpagenr("$") do
      local buflist = vim.fn.tabpagebuflist(i)
      local winnr = vim.fn.tabpagewinnr(i)
      local bufname = vim.fn.bufname(buflist[winnr])
      local filename = bufname ~= "" and vim.fn.fnamemodify(bufname, ":t") or "[No Name]"

      -- Agregar padding a cada pestaña
      local tab_content = "  " .. filename .. "  "

      -- Aplicar diferentes colores según la pestaña activa o inactiva
      if i == vim.fn.tabpagenr() then
          s = s .. "%#TabActive#" .. tab_content .. "%#TabLine#"
      else
          s = s .. "%#TabInactive#" .. tab_content
      end
  end

  return s
end

-- Show errors and warnings in a floating window
vim.api.nvim_create_autocmd("CursorHold", {
    callback = function()
        vim.diagnostic.open_float(nil, { focusable = false, source = "if_many" })
    end,
})

vim.api.nvim_create_autocmd("LspProgress", {
  ---@param ev {data: {client_id: integer, params: lsp.ProgressParams}}
  callback = function(ev)
    local spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
    vim.notify(vim.lsp.status(), "info", {
      id = "lsp_progress",
      title = "LSP Progress",
      opts = function(notif)
        notif.icon = ev.data.params.value.kind == "end" and " "
          or spinner[math.floor(vim.uv.hrtime() / (1e6 * 80)) % #spinner + 1]
      end,
    })
  end,
})
