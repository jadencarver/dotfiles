set t_Co=256
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'othree/html5.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'bling/vim-airline'
Plugin 'slim-template/vim-slim'
Plugin 'rking/ag.vim'
Plugin 'lilydjwg/colorizer'
Plugin 'vim-scripts/vim-rooter'
Plugin 'scrooloose/syntastic'
Plugin 'isRuslan/vim-es6'
Plugin 'rust-lang/rust.vim'

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
autocmd BufNewFile,BufRead *.md set filetype=markdown

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
