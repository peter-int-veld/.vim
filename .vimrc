"
" Set default options
"
set nocompatible
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

"
" Syntax settings
"
filetype plugin indent on
syntax on

"
" Standard command remappings
"
inoremap jj <ESC>

"
" Leader key settings
"
let mapleader=" "
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>

"
" Vundle packages
" 
filetype off                  " required
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

call vundle#end()            " required
filetype plugin indent on    " required

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
:noremap <F6> :set hlsearch! hlsearch?<CR>


