set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-python/python-syntax'
Plugin 'mhartington/oceanic-next'

call vundle#end()            " required
filetype plugin indent on    " required

let g:python_highlight_all = 1

syntax on 
set number 
set backspace=indent,eol,start
set history=1000
set undolevels=700
set showcmd
set showmode
set gcr=a:blinkon0
set autoread 
set nowrap
set linebreak

syntax enable
set t_Co=256

if (has("termguicolors"))
 set termguicolors
endif

colorscheme OceanicNext

set scrolloff=4         "Start scrolling when we're 4 lines away from margins
set sidescrolloff=15
set sidescroll=1

set noswapfile
set nobackup
set nowb

set hidden 

set nofoldenable 

map K <Nop>

set ttimeout
set ttimeoutlen=1

set clipboard+=unnamed
set showmatch

set incsearch        "Find the next match as we type the search
set viminfo='100,f1  "Save up to 100 marks, enable capital marks
set ignorecase
set smartcase

if has('persistent_undo')
 silent !mkdir ~/.vim/backups > /dev/null 2>&1
 set undodir=~/.vim/backups
 set undofile
endif

set pastetoggle=<F2> " Press F2 in insert mode for better paste
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

autocmd FileType make setlocal noexpandtab
autocmd FileType cpp setlocal noexpandtab

vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

set list listchars=tab:\ \ ,trail:·
