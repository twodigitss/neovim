return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    local servers = {
      "pylsp",  --Python
      "rust_analyzer", --Rustlang
      "ts_ls", --JS/TS
      "lua_ls", --Lua
    }

    -- local capabilities = vim.lsp.protocol.make_client_capabilities()
    local capabilitiesz = {
      textDocument = {
        foldingRange = {
          dynamicRegistration = false,
          lineFoldingOnly = true
        }
      }
    }
    local capabilities = require('blink.cmp').get_lsp_capabilities(capabilitiesz);
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup({
        capabilities = capabilities,
        on_attach = function(_, bufnr)
          local bufmap = function(mode, lhs, rhs)
            vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, { noremap = true, silent = true })
          end
        end,
      })
    end
  end

}
