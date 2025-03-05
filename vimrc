set nocompatible 
"
" Binds
"

let g:mapleader = " "
nnoremap <leader>ex :Ex<CR>

" On certain distributions of vim, there are some weird rules for backspace.
" This fixes those rules to behave like one would expect.
set backspace=indent,eol,start

" Half page jumps with cursor centered
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Center search results
nnoremap n nzzzv
nnoremap N Nzzzv

syntax on
syntax enable

"
" Yank, Clp, Paste
"
" Yank to system clipboard without overriding existing register
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y
nnoremap <leader>p "+p
nnoremap <leader>P "+P

" Yank the current line
nnoremap <leader>y :call CopyLine()<CR>

" Yank between A and B marks
nnoremap <leader>yim :call YankInsideMarks()<CR>

" Yank All
nnoremap <leader>yA :call YankAll()<CR>

" Paste in visual mode without overwriting the register
xnoremap <leader>p "_dP

" Substitute current word with interactive replacement (cursor repositioned)
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w><Left><Left><Left>

" List buffers and prompt to switch
nnoremap <leader>b :ls<CR>:b 

" Move to beginning and end of line
nnoremap gh ^
nnoremap gl g_

" set ai " auto indent
" show marks
nnoremap <leader>m :<C-u>marks<CR>:normal! `

set incsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif
set nohlsearch
set ignorecase
set cursorline
set colorcolumn=80
set scrolloff=999

"
" Tab Stuff
"
set smarttab
filetype plugin indent on
set modelines=2
set scrolloff=8
set autoindent
set shiftwidth=4 tabstop=4
set expandtab softtabstop=-1
set number relativenumber
set showmatch
set lazyredraw
set ignorecase smartcase hlsearch
set mouse=

"
" UndoStuff
"
set noswapfile
set undofile
set undodir=$HOME/.vim/undo
" set viminfofile =$HOME/.vim/.viminfo
set viminfofile =NONE
let wildignorecase = 1
let wildmenu = 1
set nowrap

"
" sensible
"

set listchars=tab:│·,extends:→,precedes:‹,nbsp:·,trail:·
set list
set termguicolors
colorscheme catppuccin_macchiato
" let g:airline_theme = 'catppuccin_mocha'

"
" Which_key
"
" nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
" nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
" set timeoutlen=250

" source other files
source $HOME/vimfiles/functions.vim
" source $HOME/vimfiles/plug.vim
let g:loaded_gzip=1
let g:loaded_matchit=1
let g:loaded_netrwPlugin=1
let g:loaded_tarPlugin=1
let g:loaded_zipPlugin=1
let g:loaded_man=1
let g:loaded_2html_plugin=1
let g:loaded_remote_plugins=1
