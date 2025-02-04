return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "bash", "css", "html", "java", "javascript",
        "json", "lua", "nix", "python", "rust", "scss",
        "xml", "typescript", "tsx", "toml", "rust", "regex",
        "lua",
      },
      highlight = {
          enable = true,
          additional_vim_regex_highlighting = true
      }
    }

}
