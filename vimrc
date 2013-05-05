silent! execute pathogen#infect()

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
set t_Co=256

syntax on
filetype plugin on

let g:pandoc_no_folding         = 1
let g:pandoc_use_hard_wraps     = 1
let g:zenburn_alternate_Visual  = 1
let g:zenburn_high_Contrast     = 1
let g:zenburn_old_Visual        = 1

let NERDTreeShowHidden          = 1
let NERDTreeCaseSensitiveSort   = 1
let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore              = ['\.git*','\.svn$','\.hg$']
let NERDTreeDirArrows           = 0
let NERDTreeWinSize             = 40

let Tlist_Auto_Highlight_tag    = 1
let Tlist_Use_Right_Window      = 1
let Tlist_WinWidth              = 40

colorscheme zenburn

let g:is_posix = 1

if has("autocmd")
    autocmd vimenter * if !argc() | NERDTree | endif
    autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType c setlocal ts=8 shiftwidth=4 cindent expandtab 
    autocmd FileType h setlocal ts=8 shiftwidth=4 cindent expandtab 
    autocmd FileType html set formatoptions+=tl
    autocmd FileType html,css set noexpandtab tabstop=2
endif

