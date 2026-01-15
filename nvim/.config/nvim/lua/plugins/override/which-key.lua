return {
  "folke/which-key.nvim",
  opts = {
    preset = "helix", -- Values : helix, classic, modern
    defaults = {},
    spec = {
      {
        mode = { "n", "x" },
        { "<leader>", group = "Leader" },
        { "<leader>f", group = "Telescope file/find" },
        { "<leader>c", group = "Code" },
        { "<leader>b", group = "Buffer" },
        { "<leader>g", group = "Git" },
        { "<leader>u", group = "UI" },
        { "<leader>s", group = "Search" },
        { "<leader>x", group = "Diagnostics/Quickfix" },
        { "<leader>q", group = "Quit/Session" },
        { "g", group = "Goto" },
        { "gs", group = "Surround" },
        { "z", group = "Fold" },
      },
    },
  },
}
