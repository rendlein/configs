set nomodeline
set nocp

syntax on

set nu

set bs=2

set ts=4
set shiftwidth=4
set fileencoding=utf-8

set t_Co=256

colorscheme desert

filetype on
if has("autocmd")
    autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType c setlocal ts=8 shiftwidth=4 cindent expandtab 
    autocmd FileType h setlocal ts=8 shiftwidth=4 cindent expandtab 
endif

nmap <F5> :w<CR>:make <CR>
nmap <S-F5> :./a.out <CR>
nmap <F6> :clist <CR>
nmap <F7> :cn <CR>
nmap <S-F7> :cfirst <CR>
nmap <C-F7> :clast <CR>


