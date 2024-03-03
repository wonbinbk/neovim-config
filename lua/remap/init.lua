-- remap here
-- fzf-lua
vim.keymap.set("n", "<leader>pf", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
vim.keymap.set("n", "<C-p>", "<cmd>lua require('fzf-lua').git_files()<CR>", { silent = true })
vim.keymap.set("n", "<C-space>", "<cmd>lua require('fzf-lua').buffers()<CR>", {})
vim.keymap.set("n", "<C-k>", "<cmd>lua require('fzf-lua').builtin()<CR>", {})
vim.keymap.set("n", "<C-l>", "<cmd>lua require('fzf-lua').live_grep_glob()<CR>", {})
vim.keymap.set("n", "<C-g>", "<cmd>lua require('fzf-lua').grep_project()<CR>", {})
vim.keymap.set("n", "<F1>", "<cmd>lua require('fzf-lua').help_tags()<CR>", {})
vim.keymap.set("n", "<C-e>", "<cmd>lua require('fzf-lua').resume()<CR>", {})

-- turn high light off after search
vim.keymap.set("n", "<CR>", "<cmd>noh<CR>", {})
