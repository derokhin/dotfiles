syntax on
set noswapfile
nnoremap <F9> :!%:p<Enter>
set ruler
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent          " copy indent from current line when starting a new line
set pastetoggle=<F10>
set number

" make backspaces more powerfull
set backspace=indent,eol,start

execute pathogen#infect() 
filetype plugin indent on

let NERDTreeDirArrows = 0
autocmd StdinReadPre * let s:std_in=1 
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set statusline+=%F
color torte
