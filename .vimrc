set nocompatible
set rnu

filetype off

" Note Vundle.vim is not in ~/.vim/bundle 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'dense-analysis/ale'

call vundle#end()

filetype plugin indent on
filetype plugin on
set omnifunc=syntaxcomplete#Complete

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
" --- General Settings ---
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set tagstack
set background=dark

syntax on

set mouse=a
hi clear SignColumn

set clipboard^=unnamed,unnamedplus

inoremap jj <Esc>
" Remap split navigation keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
