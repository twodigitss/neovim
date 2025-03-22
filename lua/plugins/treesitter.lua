return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "bash", "comment", "css", "html",
        "javascript","json", "lua", "nix",
        "python", "rust", "tsx", "typescript",
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
