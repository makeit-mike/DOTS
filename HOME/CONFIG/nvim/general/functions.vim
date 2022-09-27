" FUNCTIONS=================================================================

" | ToggleBackground will switch between light and dark mode. 
" Only really useful if you're using a theme that supports light and dark mode.
if exists("*ToggleBackground") == 0
	function ToggleBackground()
		if &background == "dark"
			set background=light
		else
			set background=dark
		endif
	endfunction

	" means :BG will call this function.
	command BG call ToggleBackground()
endif
