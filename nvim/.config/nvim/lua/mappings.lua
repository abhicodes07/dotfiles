require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local nomap = vim.keymap.del

-- map("n", ";", ":", { desc = "CMD enter command mode" })

-- exit insert mode
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Custom mappings
-- split window
map("n", "<leader>sz", ":split<Return>", { desc = "Split Horizontal" })
map("n", "<leader>sv", ":vsplit<Return>", { desc = "Split Vertical" })
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- tabufline
if require("nvconfig").ui.tabufline.enabled then
  map("n", "<leader>sx", function()
    require("nvchad.tabufline").close_buffer()
  end, { desc = "buffer close" })
  nomap("n", "<leader>b")
  map("n", "<leader>bn", "<cmd>enew<CR>", { desc = "buffer new" })
end

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

-- Move Lines
map("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- quit
map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })

-- highlights under cursor
map("n", "<leader>ui", vim.show_pos, { desc = "Inspect Pos" })
map("n", "<leader>uI", function()
  vim.treesitter.inspect_tree()
  vim.api.nvim_input "I"
end, { desc = "Inspect Tree" })

-- lazy
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

--keywordprg
map("n", "<leader>K", "<cmd>norm! K<cr>", { desc = "Keywordprg" })

-- better indenting
map("x", "<", "<gv")
map("x", ">", ">gv")

-- nvchad theme
nomap("n", "<leader>th")

map("n", "<leader>um", function()
  require("nvchad.themes").open()
end, { desc = "telescope nvchad themes" })

-- cheatsheet
map("n", "<leader>ch", "<cmd>NvCheatsheet<CR>", { desc = "toggle nvcheatsheet" })

-- format
nomap({ "n", "x" }, "<leader>fm")

map({ "n", "x" }, "<leader>cm", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "general format file" })

-- telescope git commits
map("n", "<leader>fc", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })

-- relative number
nomap("n", "<leader>rn")

-- snacks
map("n", "<leader>gL", function() Snacks.picker.git_log() end, { desc = "Git Log (cwd)" })
map("n", "<leader>gb", function() Snacks.picker.git_log_line() end, { desc = "Git Blame Line" })
map("n", "<leader>gf", function() Snacks.picker.git_log_file() end, { desc = "Git Current File History" })
map("n", "<leader>gl", function() Snacks.picker.git_log({ cwd = vim.fs.root(0, '.git') }) end, { desc = "Git Log" })
map({ "n", "x" }, "<leader>gB", function() Snacks.gitbrowse() end, { desc = "Git Browse (open)" })
map({"n", "x" }, "<leader>gY", function()
  Snacks.gitbrowse({ open = function(url) vim.fn.setreg("+", url) end, notify = false })
end, { desc = "Git Browse (copy)" })
