" Vundle stuff ------------------------------------------

set nocompatible	" be iMproved, required
filetype off

" set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'morhetz/gruvbox'
Plugin 'mileszs/ack.vim'

" load plugins with Vundle
" Plugin 'plugin-name'

" end vundle
call vundle#end()
filetype plugin indent on

" end Vundle stuff --------------------------------------

" YouCompleteMe suff --------------------------------------

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" endYouCompleteMe suff --------------------------------------


" vim stuff""

set t_Co=256

set background=dark
colorscheme gruvbox

syntax enable

set encoding=utf-8

set number      " show line numbers
set showcmd     " show command in bottom bar
set cursorline      " highlight current line
filetype indent on  " load filetype specific indent files
set wildmenu        " visual autocomplete for command menu
set lazyredraw      " redraw only when we need to
set showmatch       " highlight matching [{()}]

set incsearch       " search as characters are entered
set hlsearch        " highlight matches

set noerrorbells    " get rid of dinging
set vb t_vb=

set tabstop=4	    " get rid of huge tabs
set shiftwidth=4	" set > to tab 4 spaces

" Visual linewise up and down by default (and use gj gk to go quicker)
nnoremap j gj
nnoremap k gk
nnoremap gj 5j
nnoremap gk 5k
vnoremap j gj
vnoremap k gk
vnoremap gj 5j
vnoremap gk 5k

" When jump to next match also center screen
nnoremap n nzz
nnoremap N Nzz
vnoremap n nzz
vnoremap N Nzz

" Same when moving up and down
nnoremap <C-u> <C-u>zz
nnoremap <C-d> <C-d>zz
nnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz
vnoremap <C-u> <C-u>zz
vnoremap <C-d> <C-d>zz
vnoremap <C-f> <C-f>zz
vnoremap <C-b> <C-b>zz

" Remap H and L (top, bottom of screen to left and right end of line)
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L g_

" More logical Y (default was alias for yy)
nnoremap Y y$

nnoremap <space> :nohlsearch<CR>    " maps clear search to spacebar

nnoremap j gj
nnoremap k gk

autocmd BufWritePre * %s/\s\+$//e " Remove all trailing white space every time you :w

" Make the whitespace characters more visible!
set listchars=eol:$,tab:→\ ,trail:·
set list

