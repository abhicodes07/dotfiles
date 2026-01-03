local lspconfig = require("lspconfig")

-- Optional: shared capabilities and on_attach
local on_attach = require("configs.lsp.utils").on_attach
local capabilities = require("configs.lsp.utils").capabilities

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "strict", -- "off", "basic", or "strict"
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "workspace",
      },
    },
  },
})
