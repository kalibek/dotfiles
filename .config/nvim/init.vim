call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plug 'google/vim-glaive'
Plug 'cloudhead/neovim-fuzzy'
Plug 'airblade/vim-gitgutter'
Plug 'vim-syntastic/syntastic'
Plug 'ervandew/supertab'
Plug 'artur-shaik/vim-javacomplete2'

" Initialize plugin system
call plug#end()

call glaive#Install()

let mapleader = ","
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap jj <ESC>
map L $
map H ^

nnoremap <leader>t :NERDTree<cr>
nnoremap <C-p> :FuzzyOpen<CR>

nnoremap <leader>n :bn<cr>
nnoremap <leader>p :bp<cr>
nnoremap <leader>l :ls<cr>
nnoremap <leader>w <c-w>w

set number
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
