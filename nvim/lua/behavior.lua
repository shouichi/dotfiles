vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.mouse = ""

-- cursor can be positions where there is no character
vim.opt.virtualedit = "block"

-- new windows go to below or right
vim.opt.splitbelow = true
vim.opt.splitright = true

-- when trying to substitute, show matching rows in a split view
vim.opt.inccommand = "split"

-- case-insensitive auto-complete
vim.opt.ignorecase = true

-- use 2 spaces instead of tabs
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
