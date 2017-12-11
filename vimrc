set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Allow vundle to manage itself "
Plugin 'VundleVim/Vundle.vim'

" Other stuff                   "
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kovisoft/slimv'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/zenburn'
Plugin 'vim-scripts/c.vim'
Plugin 'racer-rust/vim-racer'
Plugin 'dhruvasagar/vim-vinegar'

call vundle#end()

filetype plugin indent on
syntax on

set nomodeline
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
set cryptmethod=blowfish
set completeopt=menuone,longest,preview
set foldmethod=indent

set laststatus=2

map <leader>g :GundoToggle<CR>

let g:ycm_global_ycm_extra_conf = "~/.config/vim/.ycm_extra_conf.py"

let g:pandoc_no_folding         = 1
let g:pandoc_use_hard_wraps     = 1

let g:racer_cmd = "/home/rendlein/.cargo/racer"
let g:racer_experimental_completer = 1

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

let g:vimwiki_list = [{'path': '~/.wiki/'}]

" Slimv Settings
let g:slimv_swank_cmd = '! tmux new-window -d -n REPL-SBCL "sbcl --load ~/.vim/bundle/slimv/slime/start-swank.lisp"'
let g:swank_hjost               = 127.0.0.1
let g:swank_port                = 4005
" Right side of window
let g:slimv_repl_split          = 4

colorscheme zenburn

let g:is_posix = 1

nnoremap <silent> <F8> :TlistToggle<CR>

if has("autocmd")
    autocmd vimenter * if !argc() | NERDTree | endif " if just `vim` load NERDtree
    autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType c setlocal ts=4 shiftwidth=4 softtabstop=4 cindent expandtab 
    autocmd FileType h setlocal ts=4 shiftwidth=4 cindent expandtab 
    autocmd FileType html set formatoptions+=tl
    autocmd FileType html,css set noexpandtab tabstop=2
endif

augroup c_autocmds
    autocmd!
    autocmd FileType c nnoremap <F12> :!gcc % && ./a.out<CR>
    autocmd FileType c nnoremap ^<F12> :!make <CR>
augroup END

augroup python_autocmds
    autocmd!
    "highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
    autocmd FileType python set tabstop=8 expandtab shiftwidth=4 softtabstop=4
    autocmd FileType python nnoremap <F12> :!python %<CR>
augroup END
