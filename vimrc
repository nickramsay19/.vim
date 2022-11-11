" File: .vimrc
" Author: Nick Ramsay

" --- COLORSCHEME ---
set t_Co=256
syntax on
set termguicolors

" --- FILETYPES ---
" enable ftplugin and filetype indent scripts
filetype indent plugin on
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

" --- KEYMAPS ---
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

" --- SPELL CHECKING ---
" set language here
let s:SPELLLANG = "en_au"
" create a function to reduce repetition
function s:ConfigureTextualFile()
	"  enable spellchecking for this file
	execute "set spell spelllang=" . s:SPELLLANG
	" remap k and j to move down buffer lines not file lines
	noremap <buffer> <silent> k gk
	noremap <buffer> <silent> j gj
endfunction
" now run this function for any textual files
autocmd FileType text call s:ConfigureTextualFile()
autocmd FileType markdown call s:ConfigureTextualFile()


" --- PLUGIN SETTINGS ---
" disable plugins
let g:loaded_youcompleteme = 1
let g:tabular_loaded = 1
let g:loaded_supertab = 1
" - vim-easy-align
" Align table with tab
au FileType markdown vmap <tab> :EasyAlign*<Bar><Enter>
" For normal mode press bar '|'
au FileType markdown map <Bar> vip :EasyAlign*<Bar><Enter>
" - vim-airline
packadd! vim-airline

