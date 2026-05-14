---@brief
---
--- https://github.com/postgres-lsp/postgres-language-server
---
--- `postgres-language-server` can be installed via `cargo`:
--- ```sh
--- cargo install postgres-language-server
--- ```

return {
  -- We use `lsp-proxy` because newer versions (0.24.0+) require it for standard
  -- I/O communication; using older flags or no subcommand often causes attachment failures.
  cmd = { "postgres-language-server", "lsp-proxy" },
  filetypes = { "sql", "psql" },
  root_markers = { "postgres-language-server.jsonc", ".git" },
  root_dir = function(bufnr, on_dir)
    local fname = vim.api.nvim_buf_get_name(bufnr)
    
    -- The fallback logic is crucial because the PostgreSQL LSP often fails to attach 
    -- if it can't find a project root. By falling back to the file's directory or 
    -- the current working directory, we ensure the LSP works even for isolated 
    -- SQL files or projects without standard markers like .git.
    local root = vim.fs.root(fname, { "postgres-language-server.jsonc", ".git" }) 
                 or vim.fs.dirname(fname) 
                 or vim.fn.getcwd()
    
    on_dir(root)
  end,
}
