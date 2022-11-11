# File Structure
> Taken from http://www.panozzaj.com/blog/2011/09/09/vim-directory-structure/

## autoload
Scripts to be loaded only when requested. This helps speed up vim's startup time. 

## colors
Scripts that set colors for vim's colorscheme.

## compiler
This directory contains Vim scripts to be used with a specific compiler. They are used with the “:compiler” command. These scripts usually set options, for example ‘errorformat’. See “:help write-compiler-plugin”.

## ftplugin
Plugins for specific filetypes. They will only be sourced when editing the specific datatype. Files in this directory follow the naming convention:
```
c.vim
c_extra.vim
c/settings.vim
```
## indent

## keymap
```
{language}[-{layout}][_{encoding}].vim
```

## lang
Language files (e.g. English).

## spell
Spell checking files

## macros

## plugin 
Plugin scripts that are to be loaded when vim starts up.

## syntax
Syntax highlighting.

## tools
Tools to be used with vim. They can be written in other languages than vimscript.

## pack
External plugins in their packages (i.e. from a git clone). 
### pack/start
Plugins to be loaded on startup
### pack/opt
Plugins to be loaded optionally via commands.

## tutor
