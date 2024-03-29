" =============================================================================
"  What Is This: Add some conceal operator for your haskell files
"  File:         haskell.vim (conceal enhancement)
"  Author:       Vincent Berthoux <twinside@gmail.com>
"  Require:
"    set nocompatible somewhere on your .vimrc
"    Vim 7.3 or Vim compiled with conceal patch
"  Usage:
"    Drop this file in your
" 
" if exists('g:no_haskell_conceal') || !has('conceal') || &enc != 'utf-8'
"     finish
" endif
" 
"  vim: set fenc=utf-8:
" syntax match hsNiceOperator "\\" conceal cchar=λ
" syntax match hsNiceOperator "<-" conceal cchar=←
" syntax match hsNiceOperator "->" conceal cchar=→
" syntax match hsNiceOperator "\<sum\>" conceal cchar=∑
" syntax match hsNiceOperator "\<product\>" conceal cchar=∏ 
" syntax match hsNiceOperator "\<sqrt\>" conceal cchar=√ 
" syntax match hsNiceOperator "\<pi\>" conceal cchar=π
" syntax match hsNiceOperator "==" conceal cchar=≡
" syntax match hsNiceOperator "\/=" conceal cchar=≠
" 
" 
" sy match hs_DeclareFunction /^[a-z_(]\S*\(\s\|\n\)*::/me=e-2 contains=hs_FunctionName,hs_OpFunctionName
" 
" let s:extraConceal = 1
"  Some windows font don't support some of the characters,
"  so if they are the main font, we don't load them :)
" if has("win32")
"     let s:incompleteFont = [ 'Consolas'
"                         \ , 'Lucida Console'
"                         \ , 'Courier New'
"                         \ ]
"     let s:mainfont = substitute( &guifont, '^\([^:,]\+\).*', '\1', '')
"     for s:fontName in s:incompleteFont
"         if s:mainfont ==? s:fontName
"             let s:extraConceal = 0
"             break
"         endif
"     endfor
" endif
" 
" if s:extraConceal
"    " syntax match hsNiceOperator "<=" conceal cchar=≲
"    " syntax match hsNiceOperator ">=" conceal cchar=≳
"    " syntax match hsNiceOperator "=>" conceal cchar=⇒
"     "syntax match hsNiceOperator "\:\:" conceal cchar=∷
"     "syntax match hsniceoperator "++" conceal cchar=⧺
"     syntax match hsNiceOperator "\<forall\>" conceal cchar=∀
"         
"     " Only replace the dot, avoid taking spaces around.
"     syntax match hsNiceOperator /\s\.\s/ms=s+1,me=e-1 conceal cchar=∘
"     " syntax match hsNiceOperator "\.\." conceal cchar=‥
" endif
" 
" hi link hsNiceOperator Operator
" hi! link Conceal Operator
" setlocal conceallevel=2
