
vim-plug is a minimalist Vim plugin manager with the fast parallel installer.

Project home:
  https://github.com/junegunn/vim-plug

Usage:
  Open your .vimrc and write down the list of plugins between plug#begin() and plug#end()

        call plug#begin('~/.vim/plugged')

        Plug 'junegunn/seoul256.vim'
        Plug 'junegunn/vim-easy-align'
        Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
        Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
        " ...

        call plug#end()

  Reload it and :PlugInstall to install the plugins, :PlugUpdate to update them.
  :PlugClean will remove unused plugins, and :PlugUpgrade will update vim-plug itself.

  Parallel installation only works if your Vim is compiled with Ruby or Python support.
Installation
Download plug.vim and put it in ~/.vim/autoload/
