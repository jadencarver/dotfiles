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
Bundle 'ervandew/supertab'
Bundle 'kchmck/vim-coffee-script'
Bundle 'bling/vim-airline'
Bundle 'slim-template/vim-slim'
Bundle 'rking/ag.vim'
Bundle 'lilydjwg/colorizer'

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
set backspace=indent,eol,start
set guioptions-=L
set guifont=Meslo\ LG\ M\ DZ\ for\ Powerline:h12
setlocal spell spelllang=en_us

autocmd FileType eruby setlocal noexpandtab

colors distinguished
highlight ColorColumn ctermbg=232

let &colorcolumn=join(range(101,999),",")
let g:airline_powerline_fonts = 1
let g:airline_section_warning = strftime("%H:%M")

command S w !sudo tee % > /dev/null

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
map <C-n> :NERDTreeToggle<CR>

noremap <silent> <C-d> :split<CR>
vnoremap <silent> <C-d> :split<CR>
inoremap <silent> <C-d> :split<CR>
noremap <silent> <C-D> :vsplit<CR>
vnoremap <silent> <C-D> :vsplit<CR>
inoremap <silent> <C-D> :vsplit<CR>

let mapleader = ","
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

autocmd FileType html setlocal noexpandtab

let g:rubytest_in_quickfix = 1
let g:rubytest_cmd_spec = "rspec %p"
let g:rubytest_cmd_example = "rspec %p -e '%c'"
