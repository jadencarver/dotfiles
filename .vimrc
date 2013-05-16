set t_Co=256
set nocompatible
filetype off
syntax on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'wincent/Command-T'
Bundle 'scrooloose/nerdtree'
Bundle 'othree/html5.vim'

set tabstop=2
set shiftwidth=2
set expandtab

colors distinguished

command W w !sudo tee % > /dev/null

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>
