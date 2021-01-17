packloadall

" general
syntax enable
set nocompatible
set noswapfile
set history=150
set visualbell

" editor
set expandtab
set tabstop=2
set number
set showcmd
set showmatch

" search
set incsearch
set hlsearch
set ignorecase
set smartcase

" file explore (netrw variables)
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_preview = 1

" file encoding
set encoding=utf-8

" split
set splitbelow
set splitright

" NERDTree
let NERDTreeShowHidden = 1

autocmd vimenter * NERDTree
