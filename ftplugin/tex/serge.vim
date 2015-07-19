" ==============================================================================
" serge's hacks for latex files
"


" make ps
"map ;p :!dvips -Ppdf -GO %<.dvi -o %<.ps


" make pdflatex
map ;P :!pdflatex %

" read pdf
"map ;v :!open -a skim.app %<.pdf 
map ;v :!see  %<.pdf&

map ;l :!pdflatex %


map ;b :!makebib; bibtex %<

set noguipty


