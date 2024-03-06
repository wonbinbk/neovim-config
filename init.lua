-- require leader definition first
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- lazy manager & remap
require("lazy-config")
require("remap")
require("editor-settings")
