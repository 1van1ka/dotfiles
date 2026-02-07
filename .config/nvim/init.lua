require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	-- base plugins
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
end)

vim.o.clipboard = "unnamedplus"
vim.cmd.colorscheme("retrobox")
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.scrolloff = 10
vim.opt.linebreak = true
vim.opt.cursorline = true
vim.opt.breakindent = true
vim.opt.showbreak = "↪  "
vim.opt.termguicolors = true

require("lsp")
require("format_code")
require("keybinds")
