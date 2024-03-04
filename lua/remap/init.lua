-- turn high light off after search
vim.keymap.set("n", "<CR>", "<cmd>noh<CR>", {})

-- moving around split windows
vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<CR>", {})
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<CR>", {})
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<CR>", {})
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<CR>", {})

--------------------------
-- in tabvsspace.lua
-- F2 to swap
-- F3 to toggle expandtab
-- F4 to retab
--------------------------
-- F5 to toggle displaying white spaces characters
vim.keymap.set("n", "<F5>", "<cmd>set list!<CR>", {})
-- F6 to remove trailing white spaces
vim.keymap.set("n", "<F6>", "<cmd>%s/\\s\\+$//e<CR>", { silent = true })
-- F8 to switch source header
vim.keymap.set("n", "<F8>", "<cmd>ClangdSwitchSourceHeader<CR>", { silent = true })
