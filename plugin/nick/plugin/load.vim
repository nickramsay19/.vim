" Prevent the plugin from being loaded more than once
if exists("g:loaded_nick_plugin")
	finish
endif

let g:loaded_nick_plugin = 1

" expose the plugin's functions (written in nick/autoload/nick-autoload)
command! -nargs=0 NickVersion call nick#NickVersion()
command! -nargs=0 TLN call nick#TLN()

command! -nargs=0 LX call nick#LX()
