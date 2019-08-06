call plug#begin('~/.vim/plugged') 
Plug 'scrooloose/nerdtree' 
Plug 'ap/vim-buftabline'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'airblade/vim-gitgutter'
Plug 'vim-syntastic/syntastic'
Plug 'ervandew/supertab'

Plug 'rafi/awesome-vim-colorschemes'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

filetype plugin on
syntax on

imap <C-Space> <C-x><C-o>
imap <C-@> <C-Space>

let mapleader = ","
nnoremap <tab> %
vnoremap <tab> %
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>
au FocusLost * :wa
inoremap jj <ESC>
map L $
map H ^

set t_Co=256

nnoremap <leader>t :NERDTree<cr>
nnoremap <leader>n :bn<cr>
nnoremap <leader>p :bp<cr>
nnoremap <leader>l :ls<cr>
nnoremap <leader>w <c-w>w 

" typescript commands
nnoremap <C-p> :FZF<cr>

set number
" show existing tab with 2 spaces width
set tabstop=4
" when indenting with '>', use 2 spaces width
set shiftwidth=4
" On pressing tab, insert 2 spaces
set expandtab

let delimitMate_expand_cr = 1

" Colorscheme
" colorscheme minimalist

