return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "bash", "css", "html", "java", "javascript",
        "json", "lua", "nix", "python", "rust", "scss"
      },
      highlight = {
          enable = true,
          additional_vim_regex_highlighting = true
      }
    }

}
