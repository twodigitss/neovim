-- OPEN NVIMTREE AUTOMATICALLY WHEN OPENING A FILE
-- vim.api.nvim_create_autocmd("VimEnter", {
--   pattern = "*",
--   callback = function()
--     if vim.fn.argc() == 1 and vim.fn.isdirectory(vim.fn.argv(0)) == 0 then
--       vim.cmd("NvimTreeOpen")
--       vim.cmd("wincmd p")
--     end
--   end
-- })

-- CLOSE NVIMTREE WHEN ITS THE LAST OPENED WINDOW
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*",
    callback = function()
    -- Verifica si NvimTree es la única ventana abierta
    if vim.fn.winnr('$') == 1 and require'nvim-tree.view'.is_visible() then
        vim.cmd("q")
    end
end
})

vim.cmd [[
  "ITALICS FOR COMMENTS AND KEYWORDS
  hi Comment cterm=italic gui=italic
  hi Keyword cterm=italic gui=italic
  highlight Folded guibg=NONE ctermbg=NONE

  "AUTOCMDS TO REMEMBER FOLDS
  "Set a custom viewdir to avoid conflicts
  set viewdir=~/.config/nvim/.view//

  " augroup remember_folds
  "   autocmd!
  "   autocmd BufWinLeave * if expand('%') != '' | mkview | endif
  "   autocmd BufWinEnter * if expand('%') != '' | silent! loadview | endif
  "   autocmd BufWritePost * if expand('%') != '' | mkview | endif
  " augroup END

  " augroup RelativeNumberToggle
  "   autocmd!
  "   autocmd InsertEnter * set norelativenumber
  "   autocmd InsertLeave * set relativenumber
  " augroup END

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
