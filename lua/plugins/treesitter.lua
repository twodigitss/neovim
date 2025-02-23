return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "bash", "css", "html", "java", "javascript",
        "json", "lua", "nix", "python", "rust", 
        "typescript", "tsx", "rust", "lua",
      },
    },
    config = function()
      require'nvim-treesitter.configs'.setup {
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      }
    end

}
