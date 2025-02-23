return {
{
  "hrsh7th/nvim-cmp",
  dependencies = { 
    "hrsh7th/cmp-nvim-lsp", 
    "hrsh7th/cmp-path", 
    "hrsh7th/cmp-buffer", 
  },
  config = function()
    -- nvim-cmp setup
    local cmp = require("cmp")
    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          else
            fallback()
          end
        end, { "i", "s" }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "LuaSnip" },
        { name = "friendly-snippets" },
        { name = "buffer" },
        { name = "path" },
      }),
      window = {
        completion = cmp.config.window.bordered({ 
          border = 'single',
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None"
        }),
        documentation = cmp.config.window.bordered({
          border = 'single',
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None"
        }),
      },
    })
  end
},

{
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/cmp-nvim-lsp" }, -- Optional for icons
  config = function()
    -- LSP servers setup
    require'lspconfig'.pylsp.setup{}
    require'lspconfig'.ts_ls.setup{}
    -- require'lspconfig'.jdtls.setup{}
    require'lspconfig'.rust_analyzer.setup{}

    local lspconfig = require("lspconfig")
    local servers = { "pylsp", "rust_analyzer", "ts_ls" }
    
    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup({
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
        on_attach = function(_, bufnr)
          local bufmap = function(mode, lhs, rhs)
            vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, { noremap = true, silent = true })
          end
          --bufmap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
          --bufmap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
          --bufmap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
          --bufmap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
          --bufmap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
        end,
      })
    end
  end
}

}
