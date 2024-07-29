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

local lsp_config = require('lspconfig')
lsp_config.clangd.setup{}
lsp_config.cmake.setup{}
lsp_config.pyright.setup{}
lsp_config.bashls.setup{}

-- disable lsp diagnostic by override this with a do-nothing function
-- uncomment if we want to disable diagnostics
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end
require("mason").setup()
