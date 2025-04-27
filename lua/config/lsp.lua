local servers = {
  python = {
    cmd = { 'pylsp' },
    filetypes = { 'python' }
  },
  typescript = {
    cmd = { 'typescript-language-server', '--stdio' },
    filetypes = { 'typescript', 'javascript', 'typescriptreact', 'javascriptreact' }
  },
  rust = {
    cmd = { 'rust-analyzer' },
    filetypes = { 'rust' }
  },
  lua = {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' }
  },
}

for server_name, config in pairs(servers) do
  vim.lsp.config[server_name] = config
  vim.lsp.enable(server_name)
end

