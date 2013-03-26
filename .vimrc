set nomodeline
set nocp

syntax on

set ruler
set nu

set bs=2


if has("autocmd")
    filetype on
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType c setlocal ts=8 shiftwidth=4 cindent expandtab 
    autocmd FileType h setlocal ts=8 shiftwidth=4 cindent expandtab 
endif
