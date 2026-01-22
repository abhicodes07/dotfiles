require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ruff", "htmldjango", "jinja", "jinja2", "pyright", "tailwindcss-lsp-server"}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
-- custom
