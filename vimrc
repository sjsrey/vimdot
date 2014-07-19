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
set dir=~/tmp
"syntax enable

" pathogen
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
execute pathogen#infect()

"paste for the terminal
set pastetoggle=<F2>

" other
filetype plugin on
set vb

"Mappings
imap ;; :
imap jj <Esc>
imap ;w <Esc>:w
imap ;q <Esc>:wq
imap ;ps PySAL
imap ;v :tabe ~/.vimrc



let g:tex_flavor='latex'
let g:tex_comment_nospell=0

set tw=78
set formatoptions+=t

"abbreviations
"iabbrev pysal PySAL

setlocal spell spelllang=en_us
set spell
syntax on
syntax spell toplevel

"tab
set smartindent
set tabstop=4
set shiftwidth=4
set scrolloff=2

"color
set background=dark
