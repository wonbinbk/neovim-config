-- Resizes

local function parse_args(args)
    -- parse args and return if it a percentage and the actual number
    if not args or not string.match(args, "^%d+%%?$") then
        print("Invalid argument: " .. args)
        return false,nil
    end
    if args:sub(-1) == "%" then
        local percent = args:sub(1, -2)
        if tonumber(percent) > 100 then
            return true, nil
        end
        return true, percent
    else
        return false, args
    end
end

vim.api.nvim_create_user_command("Vr", function(opts)
    local usage = "Usage: [VirticalResize] :Vr {number (%)}"
    local percentage, number = parse_args(opts.args)
    if number == nil then
        print(usage)
        return
    end
    local new_size
    -- the below if block can be written shortly using Lua idiom
    -- new_size = percentage and vim.opt.columns:get() * (number / 100.0) or number
    -- however it will be very obscure for non Lua devs
    if percentage then
        new_size = vim.opt.columns:get() * (number / 100.0)
    else
        new_size = number
    end
    vim.cmd(":vertical resize " .. new_size)
end, { nargs = "*" })

vim.api.nvim_create_user_command("Hr", function(opts)
    local usage = "Usage: [HorizontalResize] :Hr {number (%)}"
    local percentage, number = parse_args(opts.args)
    if number == nil then
        print(usage)
        return
    end
    local new_size
    if percentage then
        new_size = (vim.opt.lines:get() - vim.opt.cmdheight:get()) * (number / 100.0)
    else
        new_size = number
    end
    vim.cmd(":resize " .. new_size)
end, { nargs = "*" })
