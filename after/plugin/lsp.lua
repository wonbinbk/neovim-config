local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({
        buffer = bufnr,
        exclude = {'F3', 'F4'}
    })
end)

lsp_zero.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

-- Legacy way in nvim < 0.11
-- local lsp_config = require('lspconfig')
-- lsp_config.clangd.setup{}
-- lsp_config.pyright.setup{}
-- lsp_config.lua_ls.setup{}
-- lsp_config.bashls.setup{}
-- lsp_config.julials.setup{}
-- lsp_config.yamlls.setup{}
-- lsp_config.rust_analyzer.setup{}
-- lsp_config.gopls.setup{}

-- New supported way in nvim 0.11+
vim.lsp.enable('bashls')
vim.lsp.enable('pyright')
vim.lsp.enable('lua_ls')
vim.lsp.enable('clangd')
vim.lsp.enable('yamlls')
vim.lsp.enable('julials')
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('gopls')

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    underline = true,
    -- update_in_insert = true, -- I personally don't want them in insert mode
  }
)
-- disable lsp diagnostic by override this with a do-nothing function
-- uncomment if we want to disable diagnostics
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { 'rust_analyzer' },
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    }
})
