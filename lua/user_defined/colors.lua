-- Save the last used colorscheme in a file on disk and reload it the next time
local colorscheme_file = vim.fn.stdpath("config") .. "/lua/user_defined/last_colorscheme.lua"
local function save_colorscheme(scheme)
    local file = io.open(colorscheme_file, "w")
    if file then
        file:write("vim.cmd.colorscheme('" .. scheme .. "')\n")
        file:close()
    else
        vim.notify("Failed to save colorscheme", vim.log.levels.ERROR)
    end
end

local function load_colorscheme()
    local ok, _ = pcall(dofile, colorscheme_file)
    if not ok then
        vim.notify("No saved colorscheme found. Using default.", vim.log.levels.WARN)
    end
end

load_colorscheme()

vim.api.nvim_create_autocmd("ColorScheme", {
    callback = function()
        local scheme = vim.g.colors_name
        if scheme then
            save_colorscheme(scheme)
        end
    end,
})
