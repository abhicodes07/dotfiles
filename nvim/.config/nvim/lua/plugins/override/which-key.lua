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
        { "<leader>c", group = "code" },
        { "<leader>g", group = "git" },
        { "<leader>u", group = "UI" },
        { "<leader>s", group = "Search" },
        { "g", group = "Goto" },
        { "gs", group = "Surround" },
        { "z", group = "Fold" },
      },
    },
  },
}
