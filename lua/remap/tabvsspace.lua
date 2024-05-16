-- tab and spaces
vim.keymap.set("n", "<F2>", "<cmd>set wrap!<CR>", {})
-- toggle expandtab
vim.keymap.set("n", "<F9>", function()
    local expandtab = vim.opt.expandtab:get()
    vim.opt.expandtab = not expandtab
    if vim.opt.expandtab:get() then
        print("Using spaces now. Use F10 to retab.")
    else
        print("Using tabs now. Use F10 to retab.")
    end
end, {silent=true, noremap=true, desc="Toggle expandtab and echo status"})
vim.keymap.set("x", "<F10>", ":retab!<CR>", {})
