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
Plugin 'bufexplorer.zip'
Plugin 'honza/vim-snippets'
Plugin 'sjl/gundo.vim'

call vundle#end()            " required
filetype plugin indent on    " required

"
" Set default options
"
syntax on
set modelines=0
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set nowrap
set ignorecase
set smartcase
set number
set foldmethod=indent
set foldlevelstart=80
set laststatus=2
set statusline=%f,\ line:\ %l,\ column:\ %c
set encoding=utf-8
set relativenumber
set cursorline
set ttyfast
set hidden
set gdefault
set hlsearch
set incsearch
set showmatch
set listchars=tab:▸\ 

"
" Standard command remappings
"
inoremap jj <ESC>
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
let g:EasyMotion_leader_key = '<Leader>m' 
nnoremap <Leader>p :bp<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader><space> :noh<cr>
nnoremap <Leader>v V`]
nnoremap <Leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <Leader>t :NERDTreeToggle<CR>
nnoremap <Leader>j :call JsBeautify()<cr>
nnoremap <Leader>b :BufExplorer<cr>
nnoremap <Leader>f :CtrlP<cr>

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

"
" Use ag as the default search engine for ctrl-P
"
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
