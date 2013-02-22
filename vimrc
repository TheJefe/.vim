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

" Give a shortcut to CtrlP
map <leader>t :CtrlP<CR>
" save ctrlP cache
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'

" Shortcut for switching window
map <leader>w <C-W>w

" Map vimGREP
map <leader>g execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

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
set list listchars=trail:.,tab:>>

""""""""""" Functions
function TrimSpaces()
  %s/\s*$//
  ''
:endfunction

function NoteBlock()
  let @a= "/* ** ".strftime("%m/%d/%y").":"
  let @b= "*/"
  put b
  .-1 put a
:endfunction

nnoremap <leader><Space> :call TrimSpaces()<CR>
nnoremap <leader>f :call NoteBlock()<CR>
