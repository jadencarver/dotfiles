set t_Co=256
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'othree/html5.vim'
Bundle 'mileszs/ack.vim'
Bundle 'ervandew/supertab'
Bundle 'kchmck/vim-coffee-script'

syntax enable
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab
set mouse=a
set number
set nocompatible
set smartindent
set autoindent

colors distinguished

let &colorcolumn=join(range(81,999),",")

command W w !sudo tee % > /dev/null

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>

set backspace=indent,eol,start

noremap <silent> <C-d> :split<CR>
vnoremap <silent> <C-d> :split<CR>
inoremap <silent> <C-d> :split<CR>
