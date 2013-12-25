set wrap linebreak textwidth=0
map j gj
map k gk

function! MarkdownLevel()
    if getline(v:lnum) =~ '^# .*$'
        return ">1"
    endif
    if getline(v:lnum) =~ '^## .*$'
        return ">2"
    endif
    if getline(v:lnum) =~ '^### .*$'
        return ">3"
    endif
    if getline(v:lnum) =~ '^#### .*$'
        return ">4"
    endif
    if getline(v:lnum) =~ '^##### .*$'
        return ">5"
    endif
    if getline(v:lnum) =~ '^###### .*$'
        return ">6"
    endif
    return "=" 
endfunction
au BufEnter *.md setlocal foldexpr=MarkdownLevel()  
au BufEnter *.md setlocal foldmethod=expr     





"color stuff
syntax enable
if has("gui_running")
    "colorscheme pyte
    colorscheme solarized
    syntax on
    set background=light
    "set guifont=DejaVu_Sans_Mono:h14.00
 "   set guifont=Menlo_Regular:h13.00
    set guifont=Courier:h18
else
    hi Comment ctermfg=cyan ctermbg=black
    highlight StatusLineNC ctermfg=black ctermbg=darkcyan
    highlight StatusLine ctermfg=darkcyan  ctermbg=black
    set background=light
endif

set sessionoptions=buffers,winsize,options,help,blank,resize



"
set spell

map ;soff <Esc>:setlocal nospell<CR>
map ;son <Esc>:setlocal spell spelllang=en_us<CR>

" markdown
map ;mkd :!Markdown.pl % > ~/tmp/tmp.html; open ~/tmp/tmp.html


