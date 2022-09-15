" display the version of the Nick plugin
function! nick#NickVersion()
	echo "Nick version 1.0"
endfunction

" Toggle between displaying relative line numbers and regular line numbers
let g:nick_rel_ln_nums = 0
function! nick#TLN()
	if g:nick_rel_ln_nums == 0
		set relativenumber 
		let g:nick_rel_ln_nums = 1
	else
		set norelativenumber
		set relativenumber!
		set relativenumber&
		let g:nick_rel_ln_nums = 0
	endif
endfunction

" functions not to be loaded:
" buffer all files in curr dir
function! nick#Ball()
	return ":e ./*"
endfunction

" openLexplore and shrink netrw
function! nick#LX()
	Lexplore
	25winc <
endfunction

" line numbers
let g:word_count=wordcount().words
function WordCount()
    if has_key(wordcount(),'visual_words')
        let g:word_count=wordcount().visual_words."/".wordcount().words " count selected words
    else
        let g:word_count=wordcount().cursor_words."/".wordcount().words " or shows words 'so far'
    endif
    return g:word_count
endfunction
