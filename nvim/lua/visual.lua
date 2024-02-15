-- use more colors
vim.opt.termguicolors = true

vim.opt.number = true

vim.opt.wrap = false

vim.opt.signcolumn = "yes"

-- show tabs and spaces
vim.opt.list = true
vim.opt.listchars = {
	tab = ">-",
	trail = "-",
	extends = ">",
	precedes = "<",
}
