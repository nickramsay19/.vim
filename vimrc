" File: .vimrc
" Author: Nick Ramsay

" --- COLORSCHEME ---
set t_Co=256
syntax on
set termguicolors

" --- FILETYPES ---
filetype on
filetype plugin on
filetype indent on
" autocompletion
set wildmenu
" disable automatic comment line continuation
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" --- INDENTATION ---
set tabstop=4
set shiftwidth=4
set autoindent

" --- SEARCHING ---
set incsearch
set ignorecase
set showmatch
set hlsearch

" --- GENERAL SETTINGS ---
set backspace=indent,eol,start
set ruler
set showcmd
set mouse=a
" enable line numbers
set number
" show a horizontal line below the current editting line:
"set cursorline
"set cursorcolumn

" --- HOUSEKEEPING ---
" disable compatibility with vi
set nocompatible
" move .viminfo file to .vim dir
set viminfo+=n~/.vim/viminfo
" disable .netrwhist
let g:netrw_dirhistmax = 0

" --- BINDS ---
" replace o and O with add lines without insert (since I like to add multiple lines before I insert)
noremap o o<Esc>
noremap O O<Esc>
noremap <C-o> i<Return><Esc>

" window splitting & resizing
"noremap , :execute "vsplit ."
noremap <C-h> <Esc><C-w>h
noremap <C-H> <Esc>10winc <
noremap <C-L> <Esc>10winc >

" don't copy after dd, replace old dd with cc (we will always still have "0C" which is the same as the old cc)
"" this works by dd'ing into the "black-hole register" "_
noremap dd "_dd
"" now replace cc with the old (via noremap) dd
noremap cc dd

" Delete some binds to help enforce good habits
" un-bind arrow keys
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>
" Quick save and exit
" Remap Escape
imap jk <Esc> 
" Remap Colon to semicolon
nmap ; :
noremap ;; ;
" change J and K to { and } for faster file nav
noremap J }
noremap K {
" change H and L to beginning and end of line
noremap H ^
noremap L $

" --- PLUGIN SETTINGS ---
" disable plugins
let g:loaded_airline = 1
let g:loaded_youcompleteme = 1
let g:tabular_loaded = 1
let loaded_supertab = 1
" - vim-easy-align
" Align table with tab
au FileType markdown vmap <tab> :EasyAlign*<Bar><Enter>
" For normal mode press bar '|'
au FileType markdown map <Bar> vip :EasyAlign*<Bar><Enter>

" --- STATUSLINE ---
" Clear status line when vimrc is reloaded.
set statusline=
" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R
" Use a divider to separate the left side from the right side.
set statusline+=%=
" Status line right side.
"set statusline+=\ ascii:\ %b\ \| row:\ %l\ col:\ %c\ \| percent:\ %p%%\ w:%{WordCount()}
" show the status line
set laststatus=2 " show the statusline

" -----------------------------
"set laststatus=2
"set statusline=
"set statusline+=%1*
"set statusline+=\ 
"set statusline+=%1*
"set statusline+=\ 
"set statusline+=%{b:gitbranch}
"set statusline+=\ 
"set statusline+=%3*
"set statusline+=[
"set statusline+=%1*
"set statusline+=%F
"set statusline+=%3*
"set statusline+=]
"set statusline+=%1*
"set statusline+=\ 
"set statusline+=>
"set statusline+=%5*
"set statusline+=\ 
"set statusline+=%=
"set statusline+=%6*
"set statusline+=%6*
"set statusline+=|
"set statusline+=%5*
"set statusline+=%l
"set statusline+=%6*
"set statusline+=/
"set statusline+=%5*
"set statusline+=%L
"set statusline+=\ 
"set statusline+=%c
"set statusline+=%4*
"set statusline+=%4*
"set statusline+=%4*
"set statusline+=%4*
"set statusline+=|
"set statusline+=\ 
"hi User1 ctermbg=red ctermfg=black guibg=red guifg=black
"hi User3 ctermbg=red ctermfg=darkred guibg=red guifg=darkred
"hi User6 ctermbg=darkgray ctermfg=lightgray guibg=black guifg=lightgray
"hi User5 ctermbg=darkgray ctermfg=white guibg=black guifg=white
"hi User4 ctermbg=darkgray ctermfg=lightgray guibg=black guifg=lightgray
"
"function! StatuslineGitBranch()
"  let b:gitbranch=""
"  if &modifiable
"    try
"      let l:dir=expand('%:p:h')
"      let l:gitrevparse = system("git -C ".l:dir." rev-parse --abbrev-ref HEAD")
"      if !v:shell_error
"        let b:gitbranch="(".substitute(l:gitrevparse, '\n', '', 'g').") "
"      endif
"    catch
"    endtry
"  endif
"endfunction
"
"augroup GetGitBranch
"  autocmd!
"  autocmd VimEnter,WinEnter,BufEnter * call StatuslineGitBranch()
"augroup END
