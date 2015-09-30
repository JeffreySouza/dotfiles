colorscheme gruvbox
syntax enable

set encoding=utf-8

set number		" show line numbers
set showcmd		" show command in bottom bar
set cursorline		" highlight current line
filetype indent on	" load filetype specific indent files
set wildmenu		" visual autocomplete for command menu
set lazyredraw		" redraw only when we need to
set showmatch		" highlight matching [{()}]

set incsearch		" search as characters are entered
set hlsearch		" highlight matches

nnoremap <space> :nohlsearch<CR> 	" maps clear search to spacebar

nnoremap j gj
nnoremap k gk

