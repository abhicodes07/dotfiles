require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "htmldjango", "jinja", "jinja2", "pyright" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
-- custom
