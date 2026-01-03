require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "htmldjango", "jinja", "jinja2" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
-- custom
local custom_servers = { "pyright" }

for _, server in ipairs(custom_servers) do
  require("configs.lsp." .. server)
end
