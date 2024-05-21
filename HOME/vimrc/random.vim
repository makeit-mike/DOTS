" Make the FZF layout take up the full vim window
let g:fzf_layout = { 'window': { 'width': 1, 'height': 1, 'relative': v:true } }

" Remaps specific to functions in this module
nnoremap <silent>ghf :cf ghcid.txt<CR>
nnoremap <silent>ghn :call GoToGhcidError()<CR>
nnoremap <silent>gdd :call DuplicateTab()<CR>

" When there is an error in ghcid.txt, it looks like this: (1 of 100): src/SomeFile.hs:(23,7)-(38,9): error: [GHC-95909]
" Currently fails on 'All good', needs to regex search for 'All good' but wasn't working in lua config so I removed it for now. 
" Sometimes the GHC error is not in the expected parsable format, in these cases it fails.
function GoToGhcidError()
	" Get top line from ghcid.txt
	redir => l:output
	silent execute "cf ghcid.txt"
	redir end

	echomsg l:output

	if l:output == "All good"  
		return
	else 
		" split line into parts
		let l:parts = split(l:output, ':') " [ '(1 of 100)', ' src/SomeFile.hs', '(23,7)-(38,9)', 'error', '[GHC-95909]']
		" parse out needed data for redirect 
		let l:filePath = Strip(l:parts[1]) " ' src/SomeFile.hs'
		let l:locInfo = split(strpart(split(l:parts[2], ')')[0], 1), ',') " [23, 7] 
		call GoToLocation(l:filePath, Strip(l:locInfo[0]), Strip(l:locInfo[1]))
	endif
endfunction

" Takes the exact position in a tab and duplicates it.
function DuplicateTab()
		let l:filePath = expand('%')
		let l:lineNumber = line('.')
		let l:colNumber = col('.')
		call GoToLocation(l:filePath, l:lineNumber, l:colNumber)
endfunction

" Goes to an exact location in a new tab.
function GoToLocation(filePath, lineNumber, colNumber)
		echomsg '((' . a:filePath . ', ' . a:lineNumber ', ' . a:colNumber . '))'
		execute 'tabedit ' . a:filePath
		execute 'normal! ' . a:lineNumber . 'G' . a:colNumber . '|' 
endfunction

" Sorta like C#'s trim(), removes leading and trailing whitespace.
function Strip(input_string)
    return substitute(a:input_string, '^\s*\(.\{-}\)\s*$', '\1', '')
endfunction

