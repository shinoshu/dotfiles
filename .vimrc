if &compatible
    set nocompatible
endif

" dein
set runtimepath+=~/src/github.com/Shougo/dein.vim
call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neocomplete.vim')
" call dein#add('Shougo/neosnippet')
" call dein#add('Shougo/neosnippet-snippets')
" call dein#add('Shougo/deoplete.nvim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('Shougo/unite.vim')
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('editorconfig/editorconfig-vim')
call dein#add('edkolev/tmuxline.vim')
call dein#add('fatih/vim-go')
call dein#add('kien/ctrlp.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('tpope/vim-fugitive')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('vim-jp/vim-go-extra')
" call dein#add('Yggdroot/indentLine')
call dein#add('scrooloose/syntastic')
call dein#add('Lokaltog/vim-easymotion')

call dein#end()
if dein#check_install()
    call dein#install()
endif

" nerdtree
let g:NERDTreeShowBookmarks=1

" settings
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
set t_vb=
set novisualbell

" set list
" set listchars=tab:»-,trail:-,nbsp:%,eol:↲

" nnoremap
nnoremap j gj
nnoremap k gk
"nnoremap <S-h> ^
"nnoremap <S-l> $
nnoremap <C-c><C-c> :<C-u>nohlsearch<CR><Esc>
nnoremap <Leader>c :<C-u>setlocal cursorline! cursorcolumn!<CR>

filetype off
filetype plugin indent on

" vim-go
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" airline
set ambiwidth=double
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extentions#tabline#enabled = 1
let g:airline#extentions#tabline#buffer_idx_mode = 1
let g:airline#extentions#whitespace#mixed_indent_algo = 1
let g:airline_theme = 'papercolor'
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" python
" let g:deoplete#enable_at_startup = 1
let g:syntastic_python_checkers = ['pyflakes', 'pep8']
