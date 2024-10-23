-- turn high light off after search
vim.keymap.set("n", "<leader><CR>", "<cmd>noh<CR>", {})

-- moving around split windows
vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<CR>", {})
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<CR>", {})
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<CR>", {})
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<CR>", {})

-- moving to window number. The window number is displayed by lualine
for i = 1, 6 do
    local lhs = "<leader>" .. i
    local rhs = i .. "<c-w>w"
    vim.keymap.set("n", lhs, rhs, { desc = "Move to window " .. i})
end
--------------------------
-- F1 to display help
-- F2 to rename symbol
-- F3 to format visual selection
-- F4 for code action
-- F5 to toggle displaying white spaces characters
vim.keymap.set("n", "<F5>", "<cmd>set list!<CR>", {})
-- F6 to remove trailing white spaces
vim.keymap.set("n", "<F6>", "<cmd>%s/\\s\\+$//e<CR>", { silent = true })
-- F7 to toggle zen mode
vim.keymap.set("n", "<F7>", function()
    require("zen-mode").toggle({
        window = {
            width = .60 -- width will be 85% of the editor width
        }
    })
end, { silent = true })
-- F8 to switch source header
vim.keymap.set("n", "<F8>", "<cmd>ClangdSwitchSourceHeader<CR>", { silent = true })
-- F9 to switch tab/space
-- F10 to retab on visual chosen
-- F11 to wrap
-- F12 to toggle dark/light background
vim.keymap.set("n", "<F12>", function()
    local bg = vim.o.background
    vim.o.background = bg == "dark" and "light" or "dark"
    print("Using", vim.g.colors_name, vim.o.background)
end, {silent=true, noremap=true, desc="Toggle between a dark and light theme"})

vim.keymap.set("n", "<leader>d", function()
    vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, {silent=true, noremap=true, desc="Toggle diagnostic"})
-- use Oil for file tree
vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open parent directory" })
