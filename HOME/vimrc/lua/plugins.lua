local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'junegunn/fzf.vim' 
Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']})
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'

-- Visual Changes
Plug 'yggdroot/indentline' 
Plug('dracula/vim', {['as'] = 'dracula' })
Plug 'jaredgorski/fogbell.vim'

-- LSP/Completion Config
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'norcalli/nvim-colorizer.lua'

vim.call('plug#end')

