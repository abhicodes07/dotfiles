vim.lsp.config('ruff', {
  init_options = {
    settings = {
      lint = {
        enable = true,
        preview = true,
      }
    }
  }
})
