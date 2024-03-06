-- Navigate through autocomplete suggestions with TAB and Shift-TAB
vim.api.nvim_set_keymap('i', '<TAB>', 'pumvisible() ? "\\<C-n>" : "\\<TAB>"', { expr = true, noremap = true })
vim.api.nvim_set_keymap('i', '<S-TAB>', 'pumvisible() ? "\\<C-p>" : "\\<S-TAB>"', { expr = true, noremap = true })

-- Select current suggestion with ENTER
vim.api.nvim_set_keymap('i', '<CR>', 'pumvisible() ? "\\<C-y>" : "\\<CR>"', { expr = true, noremap = true })

