syn match codeFoldStart "/\*"
syn match codeFoldEnd "\*/"

syn match hlightLine "\*\*.*$"
hi hlightLine term=bold cterm=bold gui=bold ctermbg=blue guibg=green
hi codeFoldStart term=bold cterm=bold gui=bold ctermbg=blue guibg=green
hi codeFoldEnd term=bold cterm=bold gui=bold ctermbg=blue guibg=green

setlocal foldmethod=marker
setlocal foldmarker=/*,*/
