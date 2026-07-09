vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.shadafile = "NONE"
vim.opt.swapfile = false
vim.opt.wrap = false
vim.opt.signcolumn = "yes:1"
vim.opt.winborder = "rounded"
vim.opt.undofile = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.cmd "language en_US"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

require("config.lazy")

vim.keymap.set("n", "<leader>o", function()
  local path = vim.fn.getcwd();
  vim.cmd("silent !start wt -d \"" .. path .. "\"")
end, { desc = "Open cmd to cwd" })

vim.keymap.set("n", "<leader>O", function()
  local path = vim.fn.expand('%:p:h')
  vim.cmd("silent !start wt -d \"" .. path .. "\"")
end, { desc = "Open cmd to buff path" })

vim.keymap.set("n", "<leader>e", function()
  local path = vim.fn.getcwd();
  vim.cmd("silent !start explorer \"" .. path .. "\"")
end, { desc = "Open working directory" })

vim.keymap.set("n", "<leader>E", function()
  local path = vim.fn.expand('%:p')
  vim.cmd("silent !start explorer /select, \"" .. path .. "\"")
end, { desc = "Open current buff directory" })

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clean search" })

vim.keymap.set("n", "<left>", "<cmd>echo \"Use h to move!!\"<CR>")
vim.keymap.set("n", "<right>", "<cmd>echo \"Use l to move!!\"<CR>")
vim.keymap.set("n", "<up>", "<cmd>echo \"Use k to move!!\"<CR>")
vim.keymap.set("n", "<down>", "<cmd>echo \"Use j to move!!\"<CR>")
vim.keymap.set("n", "ö", ":cprev<CR>zz", { desc = "Previous quick fix list" })
vim.keymap.set("n", "ä", ":cnext<CR>zz", { desc = "Next quick fix list" })
vim.keymap.set("n", "<leader>bo", ":%bd|e#<CR>", { desc = "Close saved buffers" });

vim.cmd "colorscheme vague"

