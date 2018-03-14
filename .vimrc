if &compatible
    set nocompatible
endif

" dein
set runtimepath+=~/src/github.com/Shougo/dein.vim
call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('Shougo/unite.vim')
call dein#add('kien/ctrlp.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('tpope/vim-fugitive')

call dein#end()
if dein#check_install()
    call dein#install()
endif

" nerdtree
let g:NERDTreeShowBookmarks=1

" setting
syntax on
set ambiwidth=double
set backspace=indent,eol,start
set clipboard+=unnamed
set cursorline
set hidden
set hlsearch
set incsearch
set number
set ruler
set shiftwidth=4
set smartindent
set tabstop=4
set title

" nnoremap
nnoremap * *N
nnoremap j gj
nnoremap k gk
nnoremap <S-h> ^
nnoremap <S-l> $
nnoremap <C-c><C-c> :<C-u>nohlsearch<CR><Esc>
nnoremap <Leader>c :<C-u>setlocal cursorline! cursorcolumn!<CR>
