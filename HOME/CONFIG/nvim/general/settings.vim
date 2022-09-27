" SANE VIM SETTINGS
" Table of Contents
"	 (1)    - DEFAULT THEME 
"	 (2)    - EDITOR  
"	 (3)    - RULERS
"	 (4)    - SHORTCUTS & REMAPPINGS
"	 (5)    - TEXT INPUT  
"	 (6)    - TERMINAL (If you are having issues, it may be something I have set specific to terminals I use (iterm2, alacritty)
"	 (7)    - AUTOCMD, auto commands. Like keeping COQ from going nuts 
"	 (8)    - PLUGIN SPECIFIC 
"			 All extra functions are in general/functions.vim
"			 All currently used plugins are in vim-plug/plugins.vim

" DEFAULT THEME (moonfly is a pretty decent dark theme that reminds me of doomemacs)
" set termguicolors " needed for some themes, like moonfly
colorscheme papercolor " a good custom vim theme with a sane light and dark setting. 

" EDITOR SETTINGS==============================================================
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
"set number      " Show line numbers, in order
set number relativenumber " show line numbers, but relative to curent line 
set ttyfast     " move through vim... more quickly
set cursorline  " show indicator on current line.
set nobackup
set nowritebackup
set updatetime=300
set timeoutlen=100
set clipboard=unnamedplus " Use OS Register alone with the default register
                          " y/Y will copy to unamed and OS clipboard
                          " p/P will still paste only what is in unnamed (default vim)
                          " to paste what is in OS clipboard, use i, cmd-v (insert mode, OS paste)

" RULERS=======================================================================
" set ruler       " show a ruler on cc. (I dont think this works with :set cmd...) 
" set cc=80       " set indicator line at a certain char width. 
" execute "set colorcolumn=" . join(range(81,335), ',') " show ruler on anything after 80
let &colorcolumn="80,".join(range(120,999),",") " show rulure on 80 and anything after 120

" Set the Ruler to transparent dark gray (use 238 for more visible gray)
highlight ColorColumn ctermbg=238
"set splitbelow
"set splitright


" SHORTCUTS & REMAPPINGS======================================================= 
" Always show padding at EOF (not great)
" nnoremap j jzz
" nnoremap k kzz
" nnoremap G Gzz

" Toggle Background color mode. View ToggleBackground() in Functions
noremap <leader>t :BG <CR>
" Light mode (note: <bar> is how you pipe vim commands in a single line)
noremap <leader>l :colorscheme desert <bar> :set notermguicolors <bar> :set background=light <CR>
" Dark mode
noremap <leader>m :colorscheme moonfly <bar> :set termguicolors <CR>
" Ripgrep fzf & git file fzf
noremap <leader>r :Rg<CR>
noremap <leader>g :GitFiles<CR>


" TEXT INPUT SETTINGS==========================================================
set shiftwidth=2
set showtabline=2
set tabstop=2   " sets width of tab
set expandtab   " converts tabs to spaces
"set autoindent  " ... it autoindents
"set smartindent " tries to autoindent based on syntax, I think its ok... most of the time


" TERMINAL SETTINGS============================================================
set t_Co=256 " More colors == More gooder?
set fileencoding=utf-8
set encoding=utf-8


" AUTOCMD (Extra)"=============================================================
" Don't add the comment prefix when I hit enter or o/O on a comment line.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
autocmd VimEnter * :COQnow [--shut-up]
" In haskell files \p inserts "{-# LANGUAGE  #-}"
autocmd filetype haskell nnoremap <silent> <leader>p :let a='{-# LANGUAGE  #-}'\|put! = a <cr> l11 <Insert>


" PLUGIN SPECIFIC==============================================================
let NERDTreeQuitOnOpen=1
nnoremap <C-n> :NERDTree<CR>
let g:ale_linters = { 'haskell':    ['hlint'] }
let g:ale_fixers =  { 'haskell':    ['ormolu'] }
let g:ale_haskell_hlint_options = '--refactor'
let g:ale_haskell_ormolu_executable="fourmolu"
let g:ale_fix_on_save = 1
let g:indentLine_leadingSpaceChar = '.'
let g:ale_linters = { 'haskell': ['hlint'] }
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0

