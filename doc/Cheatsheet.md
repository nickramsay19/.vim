# FILE NAVIGATION
zz - center cursor vertically (doesn't move cursor, but scrolls toc enter it)
o - inserts on the line below (adds new line after current to insert on)
O - inserts on the line ............. ABOVE! wow i know
B - same as b but includes punctuation as part of words
E - same ^ but for e
w - jump to beginning of next word
W - jump to beginning of next word, but exclude puncuation as separate word
gg - first line of doc
G - last line of doc
5G - go to line 5

# EDITING AND INSERTING
r - replace next character
R - replace until escape pressed
s - delete next char, enter insert mode
S - delete line, enter insert mode (i.e. replaces this line with your text)
A - insert at end of line
I - insert at beginning of line
cw - replace word
cw - replace until end of word
c$ OR C- delete rest of line and insert
c^ - delete line before cursor and insert
J - delete newline at end of current line, jump to end of line
gu - lower case
gU - upper case
~ - toggle case
## COPYING, PASTING AND DELETING
y - copy
c - cut
yiw - yank the current word
yy OR Y - yank the current line
dd - delete (and copy) entire line
]p - paste with indentation
P - paste before cursor
x - delete next character
X - delete back character (backspace)
yy - copy entire line
cc - cut entire line
p - paste any thing copied - NOTE: if entire line copied, will paste it below current line


# UNDOING, REDOING AND MACRO RECORDING
Ctrl + r - redo
qa - record macro called a
q - stop recording macro
@a - run macro a
@@ - rerun last macro
. - rerun last operation

# MULTIPLE FILE EDITTING
:e <filename> - open another file into a new buffer
:bn - switch to the next buffer
:vim * - open all files in current dir (in the same buffer)
:vim <file1> <file2>
:n - move to the next file in the buffer
## WINDOWS
:vsplit (:vs) - creates two WINDOWS vertically split one of which displaying the current buffer
:split (:sp) - ^ horizontally
<C-w>w - switch windows

# netrw (Vim's built-in file explorer)
:Explore - opens netrw in the directory of the current 
:Hexplore - ^ horizontally split
:Vexplore - ^ have a guess!


# search
/<searchterm>
n - next searchterm occurence
## replace
:s% /word1/word2/g - replace all occurences of word1 with word2

# indentation
>> - indent line
>% - indent blo

# SETTING BINDS
# for e.g. "imap" use ":imap" in the command box, or in vimrc simply "imap"
map A B - maps the "A" key press to whatever B gets expanded to. that is, if B is mapped to C, then A will now be mapped to C as well as B. if B gets changed from C to D, then A will be mapped to D.
noremap A B - maps "A" to B, without recursion (unlike above). If B is mapped to C, then A will NOT do C but exclusively B. To clarify, in the first example, A will be binded to B's default meaning, concretetely, "noremap A j" will map A to "move cursor down", regardless of what "j" has itself be binded to.
nmap/nnoremap - "map" and "noremap" equivalents but only for normal mode
vmap/vnoremap - ^ but in visual and select modes only
imap/inoremap - ^ insert mode
cmap/cnoremap - ^ command line
xmap/xnoremap - ^ visual only (not select mode like vmap)
omap/onoremap - ^ operator-pending
lmap/lnoremap - ^ insert, command-line, and regex search
## shorthands
map/noremap - defaults to normal + visual + op mode
map!/noremap! - defaults to insert and command-line mode
## reference
https://stackoverflow.com/questions/3776117/what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping

# SPELLCHECKING
NOTE: Must have a spell file in `.vim/spell` with name `{lang}_{region}.diff` e.g. `en_US.diff`
:set spell spelllang=en_us
:setlocal spell spelllang=en_us
:set nospell
[ - previous misspelt word
] - next misspelt word
z= - list possbile corrections for current misspelt word
zg - add current misspelt word to dictionary
zw - mark word as incorrect

# VIM DIRECTORY STRUCTURE
## install dir
/usr/share/vim
* /vimXX - the vim default dirs like "autoload", "plugins" etc (in my case i have /usr/share/vim/vim82, since i have version 8.2)
	* use this folder's structure to structure your own ~/.vim which is described below
* /vimrc - the default vim config
## your .vim
NOTE: follows the same structure as the root /vimXX dir
* autoload/ - for functions used by plugins and general use which are loaded automatically when the function is called
* colors/ - for storing files used by :colorscheme to get different colors 
* compiler/ - for vim scripts pertinent for specific compilers (say GCC), typically they set options like 'errorformat'
* ftplugin/ - for scripts specific to certain filetypes
	* for any ".c" file, the following ftplugin/ .vim scripts will be loaded (if they exist): "c.vim", "c_extra.vim", "c/settings.vim"
* indent/ - compute the indent for a type of file
* keymap/ - store keymap files of the form: {language}[-{layout}][_{encoding}].vim e.g. "javascript.vim" or "c-layout1_UTF8.vim"
* lang/ - language files for non-english users
* macros/ - 
* plugin/ - guess!
* syntax/ - syntax highlighting
* tools/ - tools usable by vim, needn't be vim scripts
* tutor/ - vimtutor
## reference
https://duckduckgo.com/?q=.vim+directory+stryctyre&t=ffab&ia=web

# PLUGINS
## surround
ysiw”- surround curr word with "
ds” - remove surrounding "
cs[( - change surround "[" with "("

## Features
* mksession - retains window, tabs and buffers configuration
* autocomplete + spellchecker
* code folding
* tabs
* marks
* trigger commands (e.g. make) on file edit

## More links (references + a few more links)
https://devhints.io/vimscript
https://stackoverflow.com/questions/3776117/what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping
https://vimguide.readthedocs.io/en/latest/vim.html
