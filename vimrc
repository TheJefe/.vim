"""" Pathogen setup """"""
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"""""""""" Jeffs Custom Highlighting """"
"color anotherdark
syn match codeFoldStart "/\*"
syn match codeFoldEnd "\*/"

syn match hlightLine "\*\*.*$"
hi hlightLine term=bold cterm=bold gui=bold ctermbg=blue guibg=green
hi codeFoldStart term=bold cterm=bold gui=bold ctermbg=blue guibg=green
hi codeFoldEnd term=bold cterm=bold gui=bold ctermbg=blue guibg=green

setlocal foldmethod=marker
setlocal foldmarker=/*,*/
set guioptions=aAce
set clipboard=unnamed
set number
set ignorecase
set noswapfile

" Map leader
:let mapleader = ","

" Give a shortcut key to NERD Tree
map <leader>n :NERDTreeToggle<CR>

"""""""""""" VimOrganizer settings
filetype plugin indent on

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
au BufEnter *.org call org#SetOrgFileType()
""""""""""""

" attempting to get the syntax automatically selected based on extension
syntax on
filetype on
filetype plugin on
au BufNewFile,BufRead *.note set filetype=note

" Show trailing spaces as a dot
set list listchars=trail:.

""""""""""" Functions
function TrimSpaces()
  %s/\s*$//
  ''
:endfunction

function NoteBlock()
  let @a= "/* **".strftime("%m/%d/%y").":"
  let @b= "*/"
  put b
  .-1 put a
:endfunction

nnoremap <leader><Space> :call TrimSpaces()<CR>
nnoremap <leader>f :call NoteBlock()<CR>
