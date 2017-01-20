set nocompatible              "be iMproved, required

source ~/.vim/plugins.vim     "Load plugins via Vundle

syntax enable
filetype plugin indent on
set backspace=indent,eol,start "Make backspace behave like every other editor
let mapleader=','              "Using comma instead of the default '\' as the leader key
set nonumber                   "Deactivate line numbers


""
" Visuals
""
set background=dark
"set t_Co=256                        " force vim to use 256 colors
"let g:solarized_termcolors=256      " use solarized 256 fallback
colorscheme solarized

" Set background of the line number column to the same as the main background
highlight LineNr ctermbg=bg

" Fake a left padding of one character
set foldcolumn=1
highlight foldcolumn ctermbg=bg

" Get rid of split borders
highlight vertsplit ctermbg=bg ctermfg=bg



""
" Tabs
""

set tabstop=4
set shiftwidth=4
set expandtab

""
" Search ---------------------------
""

set hlsearch
set incsearch


""
" Split ---------------------------
""

set splitbelow
set splitright

nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-h> <C-w><C-h>
nmap <C-l> <C-w><C-l>


""
" Mappings ---------------------------
""

" Easier access to the Vimrc file
nmap <leader>ev :tabedit $MYVIMRC<cr>

" Easier highlight removal
nmap <leader><space> :nohlsearch<cr>

" Find a tag
nmap <leader>f :tag<space>



""
" NerdTree
""

" Toggle sidebar
nmap <leader>n :NERDTreeToggle<cr>



""
" Greplace.vim
""

set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'

" :Gsearch <query> - Perform a search in multiple files
"  after a search, you can edit the result buffer and
"  use :Greplace to reflect your changes to the search results.




""
" CtrlP --------------------
""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPCurWD'

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

" Locate symbols in buffer
nmap <C-R> :CtrlPBufTag<cr>

" Navigate to recent files
nmap <C-E> :CtrlPMRUFiles<cr>



""
" UltiSnips ----------------
""
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" Open :UltiSnipsEdit in a split
let g:UltiSnipsEditSplit="vertical"

""
" Functions
""
function! StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction





""
" Auto-commands
""

augroup sourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

augroup cleaning
    autocmd!
    " Strip trailing white spaces
    autocmd BufWritePre * :call StripTrailingWhitespaces()
augroup END
