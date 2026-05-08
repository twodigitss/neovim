return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "bash", "comment", "css", "html",
      "javascript","json", "lua",
      "python", "typescript",
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  },

}
