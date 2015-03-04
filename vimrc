" Do not use vi default settings.
set nocompatible

" Set the number of spaces used for tabs.
let tabsize = 4


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
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'rking/ag.vim'
Plugin 'flazz/vim-colorschemes'

" Javascript syntax.
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" Less syntax.
Plugin 'groenewege/vim-less'

" Finish vundle.
call vundle#end()
filetype plugin indent on


" Custom Settings
" ---------------

" Put swap files in a temporary directory in home or root.
set swapfile
set directory=$HOME/.vim/tmp
set backupdir=$HOME/.vim/tmp

" Use a more convenient leader key.
let mapleader = ','

" General display settings.
filetype off
filetype on
syntax on
set showcmd
set number
set numberwidth=4
set visualbell t_vb=
set colorcolumn=81
set foldcolumn=1
set foldmethod=indent
set foldlevel=99
set listchars=trail:·
set list

" Highlight search results.
set hls

" Don't show an error if this colorscheme does not exist.
silent! colorscheme Tomorrow-Night

" Use spaces for tabs.
set expandtab
execute 'set tabstop='.tabsize
execute 'set shiftwidth='.tabsize
execute 'set softtabstop='.tabsize

" Make backspace behave normally.
set backspace=2

" Save folds when leaving buffers.
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Reload vimrc while editing in vim.
nnoremap <leader>v :source $MYVIMRC<cr>

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

" Turn off highlighted text faster.
nnoremap <space> :nohl<cr>

" Faster search and replace.
nnoremap <leader>s :%s/

" Open the register faster.
noremap <leader>r :register<cr>

" Add newlines in normal mode without going into insert mode.
nnoremap <cr> o<esc>

" Auto-indent and return to original location.
nnoremap <leader>= gg=G<cr><c-o><c-o>

" Faster tab creation.
nnoremap <leader>t :tabnew<cr>

" Convert html one-liners to three lines.
nnoremap <leader>h f>li<cr><esc>f<i<cr><esc>


" Plugin Customization
" --------------------

" Show jsx syntax highlighting in js files with vim-jsx..
let g:jsx_ext_required=0

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
nmap <leader>` ysiW`
nmap <leader>( ysiW(
nmap <leader>) ysiW)
nmap <leader>[ ysiW[
nmap <leader>] ysiW]
nmap <leader>{ ysiW{
nmap <leader>} ysiW}
nmap <leader>< ysiW<
nmap <leader>> ysiW>

" Convert from bracket notation to dot notation using vim-surround.
nmap <leader>d F[i.<esc>3lds'ds]e

" Convert from dot notation to bracket notation using vim-surround.
nmap <leader>D ysiw]lysiw'F.xwe
