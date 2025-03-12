-- Press `q` to exit help and checkhealth windows
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'help', 'checkhealth' },
    callback = function()
        vim.keymap.set('n', 'q', '<cmd>bd<cr>', { silent = true, buffer = true })
    end,
})
