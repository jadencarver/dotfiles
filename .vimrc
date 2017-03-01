set t_Co=256
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

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

colors distinguished
highlight ColorColumn ctermbg=232
let &colorcolumn=join(range(101,999),",")

inoremap <S-Space> _
noremap <silent> <C-d> :split<CR>
vnoremap <silent> <C-d> :split<CR>
inoremap <silent> <C-d> :split<CR>
noremap <silent> <C-D> :vsplit<CR>
vnoremap <silent> <C-D> :vsplit<CR>
inoremap <silent> <C-D> :vsplit<CR>
nnoremap <silent><Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent><Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent><Leader>> :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent><Leader>< :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
command S w !sudo tee % > /dev/null

autocmd Filetype html setlocal expandtab shiftwidth=4
autocmd Filetype javascript setlocal expandtab shiftwidth=4
"autocmd FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
autocmd FileType eruby setlocal noexpandtab
autocmd FileType rust setlocal expandtab shiftwidth=4
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.rs set filetype=rust
autocmd BufNewFile,BufRead *.es6 set filetype=javascript
autocmd BufNewFile,BufRead *.slim set filetype=slim
autocmd BufNewFile,BufRead *.coffee set filetype=coffee

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails'
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_max_depth = 40
let g:ctrlp_max_files = 0

Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

Plugin 'othree/html5.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts = 1
let g:airline_section_warning = strftime("%H:%M")

Plugin 'slim-template/vim-slim'
Plugin 'rking/ag.vim'
Plugin 'lilydjwg/colorizer'
Plugin 'vim-scripts/vim-rooter'
Plugin 'scrooloose/syntastic'
Plugin 'isRuslan/vim-es6'

Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'
" Plugin '907th/vim-auto-save'
Plugin 'mikelue/vim-maven-plugin'
Plugin 'majutsushi/tagbar'
