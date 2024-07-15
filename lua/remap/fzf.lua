-- fzf-lua
vim.keymap.set("n", "<leader>pf", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
vim.keymap.set("n", "<C-p>", "<cmd>lua require('fzf-lua').git_files()<CR>", { silent = true })
vim.keymap.set("n", "<C-space>", "<cmd>lua require('fzf-lua').buffers()<CR>", {})
vim.keymap.set("n", "<leader>k", "<cmd>lua require('fzf-lua').builtin()<CR>", {})
vim.keymap.set("n", "<leader>l", "<cmd>lua require('fzf-lua').live_grep_glob()<CR>", {})
vim.keymap.set("n", "<leader>g", "<cmd>lua require('fzf-lua').grep_cword()<CR>", {})
vim.keymap.set("n", "<F1>", "<cmd>lua require('fzf-lua').help_tags()<CR>", {})
vim.keymap.set("n", "<leader>r", "<cmd>lua require('fzf-lua').resume()<CR>", {})
vim.keymap.set("n", "<F4>", "<cmd>lua require('fzf-lua').lsp_finder()<CR>", {})

