call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/NERDTree' " :NERDTree shows a decent file tree.
    Plug 'yggdroot/indentline' " show line indents
    Plug 'bluz71/vim-moonfly-colors'  " a decent dark theme, will likely require termguicolors
    Plug 'junegunn/fzf.vim' " fzf, :Rg
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy finding is the best finding 
    Plug 'dense-analysis/ale' " syntax checker, fast
    Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' } " use ghcid with linting
    Plug 'airblade/vim-gitgutter' " show git diff in file
    Plug 'ryanoasis/vim-devicons'
    Plug 'ms-jpq/coq_nvim'
    Plug 'bling/vim-airline'
    " Plug 'twinside/vim-haskellFold'
    Plug 'NLKNguyen/papercolor-theme'
call plug#end()

