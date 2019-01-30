set nocompatible

filetype off

" Note Vundle.vim is not in ~/.vim/bundle 
set rtp+=~/.vim/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-syntastic/syntastic'

call vundle#end()

filetype plugin indent on


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
set tags=./tags,tags;$HOME/ece344labs/tags

syntax on

set mouse=a
hi clear SignColumn


let g:syntastic_error_symbol = 'x'
augroup mySyntastic
    au!
    au FileType tex let b:syntastic_mode = "passive"
augroup END

augroup mySyntastic
  " tell syntastic to always stick any detected errors into the location-list
  au FileType sml let g:syntastic_always_populate_loc_list = 1

  " automatically open and/or close the location-list
  au FileType sml let g:syntastic_auto_loc_list = 1
augroup END

" press <Leader>S (i.e., \S) to not automatically check for errors
nnoremap <Leader>S :SyntasticToggleMode<CR>
