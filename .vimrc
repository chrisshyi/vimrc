set nocompatible

filetype off

" Note Vundle.vim is not in ~/.vim/bundle 
set rtp+=~/.vim/Vundle.vim
call vundle#begin()
Plugin 'zxqfl/tabnine-vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'w0rp/ale'
Plugin 'christoomey/vim-system-copy'
Plugin 'xavierd/clang_complete'

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
set tags=./tags,tags,$HOME/workspace/c/ece344labs/tags,$HOME/workspace/ostep/condition_var/tags
set background=dark

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

set clipboard+=unnamedplus
" ALE configurations
let g:ale_linters = {'cpp': ['clang'], 'c': ['clang']}
let g:ale_cpp_clang_executable = "/usr/bin/clang++-9"
let g:ale_cpp_clang_options = '-std=c++17 -Wall -I/usr/lib/llvm-9/include/c++/v1'

let g:clang_library_path='/usr/lib/llvm-9/lib/'
let g:clang_complete_auto = 1
