syn match codeFoldStart "/\*"
syn match codeFoldEnd "\*/"

syn match hlightLine "\*\*.*$"
syn match hlightLine2 "##.*$"
syn match hlightLine3 "\~\~.*$"
hi hlightLine term=bold cterm=bold gui=bold ctermbg=green ctermfg=black guibg=green
hi hlightLine2 term=bold cterm=bold gui=bold ctermbg=red guibg=red
hi hlightLine3 term=bold cterm=bold gui=bold ctermbg=blue guibg=blue
hi codeFoldStart term=bold cterm=bold gui=bold ctermbg=green ctermfg=black guibg=green
hi codeFoldEnd term=bold cterm=bold gui=bold ctermbg=green ctermfg=black guibg=green

" these next two lines allows for '-' to be repeated on newlines
set comments=sl:-,mb:-,elx:;
setlocal formatoptions+=r

setlocal foldmethod=marker
setlocal foldmarker=/*,*/
