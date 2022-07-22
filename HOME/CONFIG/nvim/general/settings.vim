" EDITOR SETTINGS==============================================================
colorscheme zellner 
syntax on       
setlocal conceallevel=2
set ignorecase  " ignore case when putting in :vim-commands
set smartcase   " auto cap when searching
set scrolloff=999 " try to keep cursor vertically-centered on screen
set wildmode=longest,list " show all matches when searching
set nocompatible " who needs old vim anyway
set hidden       " idk
set nowrap       " if its over 80 chars, I dont wanna see it.
set pumheight=10
set cmdheight=2
set iskeyword+=-
set mouse=a     " Allows you to use da mouse
"set number      " Show line numbers
set number relativenumber " show line numbers, but relative to curent line 
set ttyfast     " move through vim... more quickly
set cursorline  " show indicator on current line.
set ruler       " show a ruler on cc. 
set cc=80       " set indicator line at a certain char width.
set background=dark
set showtabline=4
set nobackup
set nowritebackup
set updatetime=300
set timeoutlen=100
set clipboard=unnamedplus
"set splitbelow
"set splitright

" Always show padding at EOF (not great)=======================================
nnoremap j jzz
nnoremap k kzz
nnoremap G Gzz

" TEXT INPUT SETTINGS==========================================================
set shiftwidth=4
set tabstop=4   " sets width of tab
set expandtab   " converts tabs to spaces
"set autoindent  " ... it autoindents
"set smartindent " tries to autoindent based on syntax, I think its ok... most of the time

" TERMINAL SETTINGS============================================================
set t_Co=256 " More colors == More gooder?
set fileencoding=utf-8
set encoding=utf-8


" EXTRA========================================================================
" Don't add the comment prefix when I hit enter or o/O on a comment line.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" PLUGIN CONFIG=================================================================
let NERDTreeQuitOnOpen=1
nnoremap <C-n> :NERDTree<CR>

let g:ale_linters = { 'haskell':    ['hlint'] }
let g:ale_fixers =  { 'haskell':    ['ormolu'] }
let g:ale_haskell_hlint_options = '--refactor'
let g:ale_haskell_ormolu_executable="fourmolu"
let g:ale_fix_on_save = 1

" insert pragma
au filetype haskell nnoremap <silent> <leader>p :let a='{-# LANGUAGE  #-}'\|put! = a <cr> l11 <Insert>
