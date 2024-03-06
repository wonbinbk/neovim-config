vim.opt.cursorline = true
vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 4
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.colorcolumn = "120"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hidden = true
-- make the cursor not blinking
vim.opt.gcr="a:block-blinkon0"
-- display white space characters
vim.opt.listchars="eol:$,tab:>-,trail:~,extends:>,precedes:<"
