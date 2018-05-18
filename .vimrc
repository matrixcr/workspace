"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible

set nowrap

set encoding=utf8

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin("~/.vim/plugged")

    " Make sure you use single quotes
    
    " Any valid git URL is allowed
    
    Plug 'tomasr/molokai'
    Plug 'altercation/vim-colors-solarized'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        turn on filetype plugins                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable detection, plugins and indenting in one step
" This needs to come AFTER the Plugin commands!
filetype plugin indent on

" Show line number
set number

set ruler

" Set tab behavior
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=2

" Enable highlighting current line
set cursorline

" Set color theme
set background=dark
colorscheme molokai 

" Enable syntax highlighting
syntax enable

" Switch syntax highlighting on when the terminal has colors
if &t_Co > 2 || has("gui_running")
    syntax on
endif

" Ignore case when searching
set ignorecase

" Highlight search result
set hlsearch

" Highlight as I type the search string
set incsearch

" Disable highlight when <leader><leader> is pressed
map <silent> <leader><leader> :noh<cr>

" out <leader> will be the space key
let mapleader="\<Space>"

" out <localleader> will be the '-' key
let maplocalleader="-"

" this makes vim's regex engine "not stupid"
" see :h magic
nnoremap / /\v
vnoremap / /\v

" Copy to system clip board
vnoremap <leader>y "+y

" Paste from system clip board
nmap <leader>p "+p

" Quit current split window 
nmap <leader>q :q<CR>

" Save all window and quit
nmap <leader>WQ :wa<CR>:q<CR>

" Fast saving
nnoremap <leader>w :w!<CR>

" Force quitting without saving
nmap <leader>Q :qa!<CR>

" Switch sub-window
noremap nw <C-W><C-W>

" Jump to right sub window
noremap <leader>l <C-W>l

" Jump to left sub window
noremap <leader>h <C-W>h

" Jump to upper sub window
noremap <leader>k <C-W>k

" Jump to lower sub window 
noremap <leader>j <C-W>j

" <leader>ev load .vimrc file 
nnoremap <leader>ev :vsplit $MYVIMRC<CR>

" Auto-apply .vimrc changes when saving
autocmd BufWritePost $MYVIMRC source $MYVIMRC

