vim.g.mapleader = "\\"

vim.keymap.set("i", "jk", "<Esc>", {noremap = true})
vim.keymap.set("v", "//", "y/<C-R>\"<CR>N" , {noremap = true}) -- Search highlighted text in visual mode 

vim.keymap.set("n", "[", "gt<CR>", {noremap = true})
vim.keymap.set("n", "]", "gT<CR>", {noremap = true})

vim.keymap.set("n", "<leader>[", "<cmd>lua vim.diagnostic.goto_prev()<CR>", {noremap = true})
vim.keymap.set("n", "<leader>]", "<cmd>lua vim.diagnostic.goto_next()<CR>", {noremap = true})

-- Dont overwrite register with deletes, unless intended 
vim.keymap.set("v", "d", "\"_d" , {noremap = true})
vim.keymap.set("n", "d", "\"_d", {noremap = true})
vim.keymap.set("v", "x", "\"_x" , {noremap = true})
vim.keymap.set("n", "x", "\"_x", {noremap = true})
vim.keymap.set("v", "<space>d", "d" , {noremap = true})
vim.keymap.set("n", "<space>d", "d", {noremap = true})
vim.keymap.set("v", "<space>x", "x" , {noremap = true})
vim.keymap.set("n", "<space>x", "x", {noremap = true})

---------------------------
--As Leader----------------
---------------------------
-- General
vim.keymap.set("n", "<leader>t", ":tabnew<CR>")
vim.keymap.set("n", "<leader>g", ":GitFiles<CR>")
vim.keymap.set("n", "<leader>r", ":Rg<CR>")
vim.keymap.set("n", "<leader>c", ":ccl<CR>")
vim.keymap.set("n", "<leader>n", ":noh<CR>")

---------------------------
--As Space-----------------
---------------------------
-- General
vim.keymap.set("n", "<space>t", ":tabnew<CR>")
vim.keymap.set("n", "<space>g", ":GitFiles<CR>")
vim.keymap.set("n", "<space>r", ":Rg<CR>")
vim.keymap.set("n", "<space>c", ":ccl<CR>")
vim.keymap.set("n", "<space>n", ":noh<CR>")
