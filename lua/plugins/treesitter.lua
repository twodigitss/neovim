return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "bash", "comment", "css", "html",
      "javascript","json", "lua",
      "python", "typescript", "go"
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  },

}
