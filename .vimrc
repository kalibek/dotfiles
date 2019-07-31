set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree' 
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdcommenter' 
Plugin 'vim-scripts/vim-auto-save'
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
let mapleader = ","
nnoremap <tab> %
vnoremap <tab> %
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
au FocusLost * :wa
inoremap jj <ESC>
map L $
map H ^

inoremap ff i()=>{}<Esc>

set t_Co=256

nnoremap <leader>t :NERDTree<cr>
nnoremap <leader>n :bn<cr>
nnoremap <leader>p :bp<cr>
nnoremap <leader>l :ls<cr>
nnoremap <leader>w <c-w>w 

" Go bindings
nnoremap <leader>f :GoMetaLinter<cr>
nnoremap <leader>d :GoDef .<cr>

" Java bindings
autocmd FileType java setlocal omnifunc=javacomplete#Complete
inoremap <C-@> <C-x><C-o>


" F5 saves current session F6 loads it
noremap <C-s> :mksession! ~/last_opened.vim<cr>
noremap <C-o> :source ~/last_opened.vim<cr>

set number
set guifont=Consolas:h11
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set wildignore+=*/target/**
let delimitMate_expand_cr = 1

colorscheme molokai
