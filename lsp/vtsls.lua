--   typescript = {
--     cmd = { 'typescript-language-server', '--stdio' },
--     filetypes = { 'typescript', 'javascript', 'typescriptreact', 'javascriptreact' }
--   },

return {
  cmd = { 'vtsls', '--stdio' },
  filetypes = {
    'typescript',
    'javascript',
    'typescriptreact',
    'javascriptreact'
  }
}
