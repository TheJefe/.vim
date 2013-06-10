syn match codeFoldStart "/\*"
syn match codeFoldEnd "\*/"

syn match hlightLine "\*\*.*$"
syn match hlightLine2 "##.*$"
hi hlightLine term=bold cterm=bold gui=bold ctermbg=blue guibg=green
hi hlightLine2 term=bold cterm=bold gui=bold ctermbg=blue guibg=red
hi codeFoldStart term=bold cterm=bold gui=bold ctermbg=blue guibg=green
hi codeFoldEnd term=bold cterm=bold gui=bold ctermbg=blue guibg=green

" these next two lines allows for '-' to be repeated on newlines
set comments=sl:-,mb:-,elx:;
setlocal formatoptions+=r

setlocal foldmethod=marker
setlocal foldmarker=/*,*/
