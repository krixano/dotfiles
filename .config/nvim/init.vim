set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.config/nvim/dein'))
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/deoplete.nvim',
    \ {'on_i': 1})
call dein#add('scrooloose/nerdtree',
    \ {'on_cmd': 'NERDTreeToggle'})
call dein#add('scwood/vim-hybrid')
call dein#add('Shougo/neopairs.vim')

call dein#end()

filetype plugin indent on
syntax enable

if dein#check_install()
    call dein#install()
endif

set background=dark
colorscheme hybrid
set cursorline
let g:neopairs#enable

set tabstop=4
set shiftwidth=4
set number
set ruler
set encoding=utf-8

set nobackup
set noswapfile

nnoremap <C-n> <Esc>:NERDTreeToggle<CR>
nnoremap <C-j> <Down>
nnoremap <C-k> <Up>
