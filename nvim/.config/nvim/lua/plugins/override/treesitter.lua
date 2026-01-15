return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "html", "python", "jinja", "htmldjango", "rust", "cpp", "git_config" }, -- Add jinja2
    highlight = { enable = true },
  },
}
