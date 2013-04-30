execute pathogen#infect()
let NERDTreeShowHidden=1

syntax on
set t_Co=256
filetype plugin on

set nomodeline
set nocp
set nobackup
set nowritebackup
set noswapfile
set ruler
set nu
set bs=2
set ts=4
set shiftwidth=4
set expandtab
set fileencoding=utf-8
set wildmenu
set hidden
set ignorecase
set smartcase

colorscheme zenburn
set background=dark

let g:is_posix = 1

if has("autocmd")
    autocmd vimenter * if !argc() | NERDTree | endif
    autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType c setlocal ts=8 shiftwidth=4 cindent expandtab 
    autocmd FileType h setlocal ts=8 shiftwidth=4 cindent expandtab 
    autocmd FileType html set formatoptions+=tl
    autocmd FileType html,css set noexpandtab tabstop=2
endif

nmap <F5> :w<CR>:make <CR>
nmap <S-F5> :./a.out <CR>
nmap <F6> :clist <CR>
nmap <F7> :cn <CR>
nmap <S-F7> :cfirst <CR>
nmap <C-F7> :clast <CR>
nmap <C-t> :TlistToggle <CR>


