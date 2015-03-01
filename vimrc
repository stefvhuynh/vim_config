" Do not use vi default settings
set nocompatible

" Set the number of spaces used for tabs
let tabsize = 2

 
" Vundle setup
" ------------

" Initialize vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'

" Finish vundle
call vundle#end()
filetype plugin indent on


" Custom Settings
" ---------------

" Use a more convenient leader key
let mapleader = ","

" Automatically enable autosave using vim-auto-save
let g:auto_save = 1

" Show dotfiles in NERDTree
let g:NERDTreeShowHidden=1

" General display settings
syntax on
set number
set showcmd
set numberwidth=4
set colorcolumn=80
set visualbell t_vb=

" Toggle relative line number setting
" Figure out how to do this

" Use spaces for tabs
set expandtab
execute "set tabstop=".tabsize
execute "set shiftwidth=".tabsize
execute "set softtabstop=".tabsize

" Make backspace behave normally
set backspace=2

" Use ctrl and directional keys to navigate screens
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Faster escaping out of insert mode
inoremap jk <esc>

" Faster NERDTree
nnoremap \ :NERDTree<cr>

" Faster NERDCommenter comment toggle in normal and visual modes
nmap <leader>/ <leader>c<space>
vmap <leader>/ <leader>c<space>

" Faster ctrlp for file searching
nnoremap <leader>f :CtrlP<cr>

" Faster search and replace
nnoremap <leader>s :%s/
