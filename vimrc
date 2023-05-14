" File: .vimrc
" Author: Nick Ramsay

" --- HOUSEKEEPING ---
set nocompatible| " disable compatibility with vi
set viminfo+=n~/.vim/viminfo| " move .viminfo file to .vim dir
let g:netrw_dirhistmax = 0 |" disable .netrwhist
set exrc| " run any local .vimrc files 
set secure| " enable secure mode to limit usage of certain commands

" --- FILETYPES ---
filetype indent plugin on| " enable ftplugin and filetype indent scripts
set wildmenu| " autocompletion
" disable automatic comment line continuation
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" --- COLORSCHEME ---
set t_Co=256
syntax on
set termguicolors

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
set number| " line numbers
"set cursorline| " show a horizontal line below the current editting line
"set cursorcolumn

" --- KEYMAPS ---
" exit insert mode to allow continual line adding-
noremap o o<Esc>
noremap O O<Esc>
noremap <C-o> i<Return><Esc> " insert new line at cursor

" quick save and exit
" Remap Escape
imap jk <Esc> " quick jk maps to esc
" Remap Colon to semicolon
nmap ; :
noremap ;; ;

" change B to go back to last word end 
noremap B lbbe

" no copy dd 
" replace old dd with cc (we will always still have "0C" which is the same as the old cc)
noremap dd "_dd " this works by dd'ing into the "black-hole register" "_
noremap cc dd " now replace cc with the old (via noremap) dd

" window splitting & resizing
noremap <C-W><M-H> :10winc <<CR>| " reduce window width left
noremap <C-W><M-L> :10winc ><CR>
nnoremap <C-W><M-K> :resize +5<CR>| " decrease window height
nnoremap <C-W><M-J> :resize -5<CR>

" swap/shift current line
noremap <C-j> ddjP
noremap <C-k> ddkP

" delete some binds to help enforce good habits
" un-bind arrow keys
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

" change J and K to { and } for faster file nav
noremap J }
noremap K {
" change H and L to beginning and end of line
noremap H ^
noremap L $

" --- SPELL CHECKING ---
let s:SPELLLANG = "en_au"| " set language here
autocmd FileType text call g:nickutil#ConfigureTextualFile(s:SPELLLANG)
autocmd FileType markdown call g:nickutil#ConfigureTextualFile(s:SPELLLANG)

" --- PLUGIN SETTINGS ---
" - vim-easy-align
packadd! vim-easy-align
au FileType markdown vmap <tab> :EasyAlign*<Bar><Enter>| " Align table with tab
au FileType markdown map <Bar> vip :EasyAlign*<Bar><Enter>| " For normal mode press bar '|'

" - auto-pairs
"packadd! auto-pairs

" - vim-airline
packadd! vim-airline

" - supertab
"packadd! supertab

" - vim-clang
"packadd! vim-clang
