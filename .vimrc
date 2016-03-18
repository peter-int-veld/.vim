"
" Vundle packages
" 
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'beautify-web/js-beautify'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'raimondi/delimitmate'
Plugin 'airblade/vim-gitgutter'
Plugin 'valloric/youcompleteme'
Plugin 'rking/ag.vim'
Plugin 'YankRing.vim'
Plugin 'duff/vim-scratch'
Plugin 'kien/rainbow_parentheses.vim'

call vundle#end()            " required
filetype plugin indent on    " required

"
" Set default options
"
syntax on
set modelines=0
set shiftwidth=4
set tabstop=4
set nowrap
set ignorecase
set smartcase
set number
set foldmethod=indent
set foldlevelstart=80
set laststatus=2
set statusline=%f
set encoding=utf-8
set relativenumber
set undofile
set cursorline
set ttyfast
set hidden
set gdefault
set hlsearch
set incsearch
set showmatch
"set list
set listchars=tab:▸\ 

"
" Standard command remappings
"
inoremap jj <ESC>
nnoremap / /\v
vnoremap / /\v
nnoremap <tab> %
vnoremap <tab> %
nnoremap ; :

"
" Dim invisible character markers
"
highlight NonText guifg=#F2F3F4
highlight SpecialKey guifg=#F2F3F4

"
" Leader key settings
"
let mapleader=" "
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <leader><space> :noh<cr>
nnoremap <leader>v V`]
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

"
" NERDTree settings
"
let NERDTreeMouseMode=1
let NERDTreeHighlightCursorline=1
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=0
let NERDTreeChDirMode=2
let NERDTreeMinimalUI=1
let g:NERDTreeWinSize=40

"autocmd VimEnter * NERDTree

map , :buffers<CR>

"
" EasyMotion settings
"
map <Leader> <Plug>(easymotion-prefix)

"
" JsBeautify settings
"
map <c-f> :call JsBeautify()<cr>

"
" Shortcut for highlight search
"
:noremap <F5> :NERDTreeToggle<CR>


