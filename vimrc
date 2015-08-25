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

"paste for the terminal
set pastetoggle=<F2>

" other
filetype plugin on
set vb

"Mappings
imap ;; :
imap jj <Esc>
imap ii <Esc>
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
set expandtab
set tabstop=4
set shiftwidth=4
set scrolloff=2


"color
set background=dark

"number
set number

"pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

set scrolloff=2

set background=dark

"cron weirdness on yosemite
" http://vim.wikia.com/wiki/Editing_crontab
au BufEnter /private/tmp/crontab.* setl backupcopy=yes


"powerline

"set rtp+=/Users/raguay/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
set rtp+=/Users/serge/.local/lib/python2.7/site-packages/powerline/bindings/vim
 
" These lines setup the environment to show graphics and colors correctly.
"set nocompatible
set t_Co=256
 
let g:minBufExplForceSyntaxEnable = 1
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
 
"if ! has('gui_running')
"   set ttimeoutlen=10
"   augroup FastEscape
"      autocmd!
"      au InsertEnter * set timeoutlen=0
"      au InsertLeave * set timeoutlen=1000
"   augroup END
"endif
 
set laststatus=2 " Always display the statusline in all windows
set guifont=Inconsolata\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" added by sjr
let g:Powerline_symbols = 'fancy'
set fillchars+=stl:\ ,stlnc:\


" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


