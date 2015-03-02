" Do not use vi default settings.
set nocompatible

" Set the number of spaces used for tabs.
let tabsize = 2


" Vundle setup
" ------------

" Initialize vundle.
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins from github.
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'

" Finish vundle.
call vundle#end()
filetype plugin indent on


" Custom Settings
" ---------------

" Use a more convenient leader key.
let mapleader = ","

" General display settings.
syntax on
set showcmd
set number
set numberwidth=4
set visualbell t_vb=
set colorcolumn=80
highlight colorColumn ctermbg=8
set foldcolumn=1
set foldmethod=indent

" Use spaces for tabs.
set expandtab
execute "set tabstop=".tabsize
execute "set shiftwidth=".tabsize
execute "set softtabstop=".tabsize

" Make backspace behave normally.
set backspace=2

" Save folds when leaving buffers.
autocmd BufWinLeave * mkview
autocmd BufWinEnter * silent loadview

" Toggle relative line number setting.
function ToggleLineNumbers()
  set number!
  set relativenumber!
endfunction

nnoremap <leader>n :call ToggleLineNumbers()<cr>

" Use ctrl and directional keys to navigate screens.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Faster escaping out of insert mode.
inoremap jk <esc>

" Faster search and replace.
nnoremap <leader>s :%s/

" Open the register faster.
noremap <leader>r :register<cr>

" Add newlines in normal mode without going into insert mode.
nnoremap <cr> o<esc>

" Auto-indent and return to original location.
nnoremap <leader>= gg=G<cr><c-o><c-o>


" Mappings For Plugins
" --------------------

" Automatically enable autosave using vim-auto-save.
let g:auto_save = 1

" Show dotfiles in NERDTree.
let g:NERDTreeShowHidden=1

" Open NERDTree faster.
nnoremap \ :NERDTree<cr>

" Faster NERDCommenter comment toggle in normal and visual modes.
nmap <leader>/ <leader>c<space>
vmap <leader>/ <leader>c<space>

" Faster ctrlp for file searching.
nnoremap <leader>f :CtrlP<cr>

" Faster delimiter insertions with vim-surround.
nmap <leader>" ysiW"
nmap <leader>' ysiW'
nmap <leader>( ysiW(
nmap <leader>) ysiW)
nmap <leader>[ ysiW[
nmap <leader>] ysiW]
nmap <leader>{ ysiW{
nmap <leader>} ysiW}
nmap <leader>< ysiW<
nmap <leader>> ysiW>
