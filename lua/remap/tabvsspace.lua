-- tab and spaces
vim.keymap.set("n", "<F2>", "<cmd>set wrap!<CR>", {})
-- toggle expandtab
vim.keymap.set("n", "<F3>", function()
    local expandtab = vim.opt.expandtab:get()
    vim.opt.expandtab = not expandtab
    if vim.opt.expandtab:get() then
        print("Using spaces")
    else
        print("Using tabs")
    end
end, {silent=true, noremap=true, desc="Toggle expandtab and echo status"})
vim.keymap.set("x", "<F4>", ":retab!<CR>", {})
