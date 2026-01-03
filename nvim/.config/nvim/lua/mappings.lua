require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- exit insert mode
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Custom mappings
-- split window
map("n", "<leader>sz", ":split<Return>", { desc = "Split Horizontal" })
map("n", "<leader>sv", ":vsplit<Return>", { desc = "Split Vertical" })
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

--Move window
map("n", "sh", "<C-w>h", { desc = "move window left" })
map("n", "sk", "<C-w>k", { desc = "move window up" })
map("n", "sj", "<C-w>j", { desc = "move window down" })
map("n", "sl", "<C-w>l", { desc = "move window right" })

-- resize window
map("n", "<C-w><left>", "<C-w><")
map("n", "<C-w><right>", "<C-w>>")
map("n", "<C-w><up>", "<C-w>+")
map("n", "<C-w><down>", "<C-w>-")

-- nvimtree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree focus window" })
