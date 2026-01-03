local M = {}

M.on_attach = function(client, bufnr)
  -- Keymaps, formatting, etc.
  local bufmap = function(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr })
  end

  bufmap("n", "gd", vim.lsp.buf.definition)
  bufmap("n", "K", vim.lsp.buf.hover)
  bufmap("n", "<leader>rn", vim.lsp.buf.rename)
end

M.capabilities = require("cmp_nvim_lsp").default_capabilities()

return M
