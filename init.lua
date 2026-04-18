vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.shadafile = "NONE"
vim.opt.wrap = false
vim.opt.undofile = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.keymap.set("n", "<left>", "<cmd>echo \"Use h to move!!\"<CR>")
vim.keymap.set("n", "<right>", "<cmd>echo \"Use l to move!!\"<CR>")
vim.keymap.set("n", "<up>", "<cmd>echo \"Use k to move!!\"<CR>")
vim.keymap.set("n", "<down>", "<cmd>echo \"Use j to move!!\"<CR>")

require("config.lazy")
vim.cmd "colorscheme vague"

