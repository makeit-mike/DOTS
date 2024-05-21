require("remap")
require("plugins")
require("lsp")

-- GENERAL
vim.o.filetype = 'on'
vim.o.ignorecase = true 
vim.o.smartcase = true 
vim.o.syntax = 'on'
vim.o.mouse = 'a'
vim.o.wildmode = 'longest,list'
vim.o.hidden = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.ttyfast = true
vim.o.wrap = false 
vim.o.shiftwidth = 2
vim.o.showtabline = 2
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.scrolloff = 7 
vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.clipboard = "unnamedplus" 
vim.o.fileencoding = "utf-8"
vim.o.encoding = "utf-8"
-- THEMING
vim.o.termguicolors = true
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- Use theme, use the terminals background
vim.cmd("colorscheme dracula")
vim.cmd("highlight Normal guibg=none")
-- Sets a ruler on line 80 and 120. 
vim.o.colorcolumn = "80,120"
vim.cmd("highlight ColorColumn guibg=#17181f")

vim.cmd("source ~/.config/nvim/random.vim") -- NOT SAFE, CHANGE BASED ON ENV

-- PLUGIN CONFIG 

require'colorizer'.setup()
