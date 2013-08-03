"""" Pathogen setup """"""
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"""""""""" Jeffs Custom Highlighting """"
"color anotherdark
syn match codeFoldStart "/\*"
syn match codeFoldEnd "\*/"

syn match hlightLine "\*\*.*$"
syn match hlightLine2 "##.*$"
hi hlightLine term=bold cterm=bold gui=bold ctermbg=blue guibg=green
hi hlightLine2 term=bold cterm=bold gui=bold ctermbg=blue guibg=pink
hi codeFoldStart term=bold cterm=bold gui=bold ctermbg=blue guibg=green
hi codeFoldEnd term=bold cterm=bold gui=bold ctermbg=blue guibg=green

set foldmethod=syntax
setlocal foldmarker=/*,*/
set guioptions=aAce
set clipboard=unnamed
set number
set ignorecase
set noswapfile
set hlsearch
set nowrap
set hidden

" tab should create 2 spaces
set expandtab
set tabstop=2

" make the shell source .bashrc and .bash_profle
set shell=bash\ --login

" Map leader
:let mapleader = ","

" Map an easier excape
inoremap jj <ESC>

" Give a shortcut key to NERD Tree
map <leader>n :NERDTreeToggle<CR>

" Give a shortcut to CtrlP
map <leader>t :CtrlP<CR>
" save ctrlP cache
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
set wildignore+=*.png,*.jpg,*.pdf,*.swf
let g:ctrlp_custom_ignore = '\.git$\|\.o$\|\.app$\|\.dSYM\|\.ipa$\|\.csv\|tags\|public\/images$\|public\/uploads$\|log\|tmp$\|source_maps\|app\/assets\/images\|test\/reports'

" Shortcut for switching window
map <leader>w <C-W>w
map <D-ENTER> :set invfullscreen<CR>

" Increase or Decrease the current transparency value
nnoremap <C-q> :set transparency+=1<CR>
nnoremap <C-a> :set transparency-=1<CR>

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

" ctags configurations
let g:ctags_statusline=1

" map a command for doing a git pull
:ca gp !git pull

""""""""""" Functions
nnoremap <leader><Space> :call TrimSpaces()<CR>
function TrimSpaces()
  %s/\s*$//
  ''
:endfunction

" Create a codefolded note block with the current date
nnoremap <leader>f :call NoteBlock()<CR>
function NoteBlock()
  let @a= "/* ** ".strftime("%m/%d/%y").":"
  let @b= "*/"
  put b
  .-1 put a
:endfunction
