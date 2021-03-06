" Do not use vi default settings.
set nocompatible

" Vundle setup
" ------------

" Initialize vundle.
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" General purpose plugins.
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
Plugin 'flazz/vim-colorschemes'
Plugin 'rking/ag.vim'
Plugin 'mileszs/ack.vim'
Plugin 'jgdavey/tslime.vim'

" Rails development.
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'

" Javascript syntax.
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" Elm syntax.
Plugin 'lambdatoast/elm.vim'

" Less syntax.
Plugin 'groenewege/vim-less'

" Swift syntax.
Plugin 'Keithbsmiley/swift.vim'

" Scala syntax.
Plugin 'derekwyatt/vim-scala'

" Haskell syntax.
Plugin 'raichoo/haskell-vim'

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
let mapleader=' '

" General display settings.
syntax on
filetype off
filetype on
set showcmd
set number
set numberwidth=4
set visualbell t_vb=
set foldcolumn=1
set foldmethod=indent
set foldlevel=99
set listchars=trail:·
set list
set scrolloff=5
set laststatus=2
set statusline=%f\[%L\ lines]

" If on vim 7.3+, use the colorcolumn; otherwise, use error highlighting.
if exists('+colorcolumn')
  set colorcolumn=81
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%81v.', -1)
endif

" Highlight search results.
set hlsearch incsearch

" Don't show an error if this colorscheme does not exist.
silent! colorscheme Tomorrow-Night

" Use spaces for tabs.
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Use this function to change the tabsize in a live vim session.
function! SetTabsize(tabsize)
  execute 'set tabstop='.a:tabsize
  execute 'set shiftwidth='.a:tabsize
  execute 'set softtabstop='.a:tabsize
endfunction

" Make backspace behave normally.
set backspace=2

" Save folds when leaving buffers.
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Normal mode mappings
" --------------------

" Reload vimrc while editing in vim.
nnoremap <leader>v :source $MYVIMRC<cr>

" Toggle relative line number setting.
function! ToggleLineNumbers()
  set number!
  set relativenumber!
endfunction

nnoremap <leader>n :call ToggleLineNumbers()<cr>

" Use ctrl and directional keys to navigate screens.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Turn off highlighted text faster by resetting the search term to nothing.
nnoremap <leader>h :let @/=""<cr>

" Faster search and replace.
nnoremap <leader>s :%s/

" Search for word under cursor in the file.
nnoremap <leader>f byw/<c-r>"<bs><cr>

" Open the register faster.
noremap <leader>y :register<cr>

" Add newlines in normal mode without going into insert mode.
nnoremap <cr> o<esc>

" Auto-indent and return to original location.
nnoremap <leader>= gg=G<cr><c-o><c-o>

" Faster tab creation.
nnoremap <leader>t :tabnew<cr>

" Convert html one-liners to three lines.
nnoremap <leader>z f>li<cr><esc>f<i<cr><esc>kkl

" Convert html three-liners to one line.
nnoremap <leader>Z j0wd0i<bs><esc>jBd0i<bs><esc>0w

" Insert mode mappings
" --------------------

" Faster escaping.
inoremap jk <esc>

" Uppercase word. This is any null character, but we will use ctrl-space.
inoremap <NUL>u <esc>vbUea

" Visual mode mappings
" --------------------

" Faster search and replace.
vnoremap <leader>s :s/


" Plugin Customization
" --------------------

" Show jsx syntax highlighting in js files with vim-jsx.
let g:jsx_ext_required=0

" Automatically enable autosave using vim-auto-save.
let g:auto_save=1
let g:auto_save_in_insert_mode=0

" Show dotfiles in NERDTree.
let g:NERDTreeShowHidden=1

" Put git information in status line with vim-fugitive.
set statusline+=%{fugitive#statusline()}

" Open NERDTree faster.
nnoremap \ :NERDTree<cr>

" Faster NERDCommenter comment toggle in normal and visual modes.
nmap <leader>/ <leader>ci
vmap <leader>/ <leader>ci

" Faster vim-fugitive commands.
nnoremap gs :Gstatus<cr>
nnoremap ga :Gwrite<cr>
nnoremap gc :Gcommit<cr>
nnoremap gd :Gdiff<cr>
nnoremap gb :Gblame<cr>
nnoremap gp :Gpush<cr>
nnoremap gA :Git add -A<cr>
nmap gC <leader>gA<leader>gc

" Faster delimiter insertions with vim-surround.
nmap <leader>" ysiw"
nmap <leader>' ysiw'
nmap <leader>` ysiw`
nmap <leader>( ysiw(
nmap <leader>) ysiw)
nmap <leader>[ ysiw[
nmap <leader>] ysiw]
nmap <leader>{ ysiw{
nmap <leader>} ysiw}
nmap <leader>< ysiw<
nmap <leader>> ysiw>

" Toggle between dot and bracket notation using vim-surround.
function! ToggleDotNotation()
  execute 'normal! bh'
  if getline('.')[col('.') - 1] == '.'
    execute "normal lysiw]lysiw'F.xwe"
  else
    execute "normal F[i.\<esc>3lds'ds]e"
  endif
endfunction

nnoremap <leader>d :call ToggleDotNotation()<cr>

" Faster ag.vim search.
nnoremap <leader>S :Ag<space>

" Faster ack.vim search.
nnoremap <leader>G :Ack<space>

" Use ag.vim to search text under cursor.
nnoremap <leader>F byw:Ag<space><c-r>"<bs><cr>

" Faster vim-rspec commands.
nnoremap <leader>ra :call RunAllSpecs()<cr>
nnoremap <leader>rc :call RunCurrentSpecFile()<cr>
nnoremap <leader>rn :call RunNearestSpec()<cr>
nnoremap <leader>rl :call RunLastSpec()<cr>

" Use spring for rspec commands.
let g:rspec_command='call Send_to_Tmux("spring rspec {spec}\n")'

" Remove the default `-s` option for ack version < 2.0.
let g:ack_default_options=' -H --nocolor --nogroup --column'
