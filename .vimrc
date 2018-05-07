"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin("~/.vim/plugged")

" Make sure you use single quotes
"
" Any valid git URL is allowed
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        turn on filetype plugins                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable detection, plugins and indenting in one step
" This needs to come AFTER the Plugin commands!
filetype plugin indent on


" out <leader> will be the space key
let mapleader=" "

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
nnoremap nw <C-W><C-W>

" Jump to right sub window
nnoremap <leader>lw <C-W>l

" Jump to left sub window
nnoremap <leader>hw <C-W>h

" Jump to upper sub window
nnoremap <leader>kw <C-W>k

" Jump to lower sub window 
nnoremap <leader>jw <C-W>j

" <leader>ev load .vimrc file 
nnoremap <leader>ev :vsplit $MYVIMRC<CR>

" Auto-apply .vimrc changes when saving
autocmd BufWritePost $MYVIMRC source $MYVIMRC

