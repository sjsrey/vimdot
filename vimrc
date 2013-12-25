" Configuration file for vim

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
set autoindent
"set nobackup
set ruler
set exrc
"set cuc
syn on
set dir=~/tmp

" pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


" other
filetype plugin on
set vb

"Mappings
imap ;; <Esc>
imap jj <Esc>


let g:tex_flavor='latex'

set tw=78
set formatoptions+=t


