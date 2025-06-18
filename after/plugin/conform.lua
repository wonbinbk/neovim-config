require("conform").setup({
    formatters_by_ft = {
        python = { "isort", "black" },
        -- c = { "clang_format" },
        -- cpp = { "clang_format" },
        cmake = { "cmake_format" },
    },
    -- format_on_save = {
    --     lsp_fallback = true,
    --     timeout_ms = 1000,
    -- },
})
