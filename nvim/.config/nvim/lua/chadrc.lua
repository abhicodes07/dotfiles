-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "chadracula-evondev",

  hl_override = {
  	Comment = { italic = true },
  	["@comment"] = { italic = true },
  },

  integrations = {"notify", "flash", 'bufferline' }
}

M.nvdash = { load_on_startup = false }

M.ui = {
  tabufline = {
    lazyload = false,
    enabled = true,
  },

  telescope = { style= "bordered" },

  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    enabled = true,
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "round",
    order = nil,
    modules = nil,
  },

  cmp = {
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    format_colors = {
      tailwind = true,
    },
  },
}

return M
