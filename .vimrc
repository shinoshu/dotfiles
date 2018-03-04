if &compatible
    set nocompatible
endif

" dein
set runtimepath+=~/src/github.com/Shougo/dein.vim
call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/unite.vim')
call dein#add('tpope/vim-fugitive')

call dein#end()

if dein#check_install()
    call dein#install()
endif

" setting
syntax on
set ambiwidth=double
set clipboard+=unnamed
set cursorline
set hidden
set number
set ruler
set shiftwidth=4
set smartindent
set tabstop=4
set title
