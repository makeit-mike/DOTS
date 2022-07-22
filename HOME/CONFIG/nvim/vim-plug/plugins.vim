call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/NERDTree'
    Plug 'bluz71/vim-moonfly-colors'  
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'dense-analysis/ale'
    Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }


call plug#end()

