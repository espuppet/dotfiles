"""""""""""""""""""""""""""""
" espuppet's vim config file"
"                           "
" Version       2.0         "
" Update Time:  2015.02.11  "
"""""""""""""""""""""""""""""

set nocompatible

" Dispaly
set nu
syntax enable
set hlsearch
set ruler
set cursorline
set showcmd
set cmdheight=2
set laststatus=2
set go=
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,latin-1
colorscheme koehler
"set guifont=DejaVu_Sans_Mono:h13:w7
set guifont=YaHei_Consolas_Hybrid:h13:w7
set termencoding=GBK
" show trailing whitespace
set list
set listchars=tab:\|\ ,trail:-
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
    set langmenu=en_US.utf-8
    language messages en_US.UTF-8
endif

" dir
set dir-=.
"autocmd! BufWinEnter * lcd %:p:h

" indent & tab
set autoindent
set smartindent
set expandtab
set backspace=2
set shiftwidth=4
set tabstop=4
set whichwrap+=<,>,h,l
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" key map
let mapleader = ","
map j gj
map k gk
map <silent> <leader><cr> :nohl<cr>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>

" Behavior
set mouse=a
set confirm
set autoread
set scrolloff=3
set clipboard=unnamed
set wildmenu
set wildmode=longest,list,full
set ignorecase
set incsearch
set smartcase
set matchtime=2
if exists('$TMUX')  " Support resizing in tmux
  set ttymouse=xterm2
endif

" backup
set nobackup
set nowb
set noswapfile

" filetype
filetype off
filetype plugin on
filetype indent on
set wildignore=*.o,*~,*.pyc,tmp/**

set omnifunc=syntaxcomplete
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType c setlocal omnifunc=ccomplete#Complete

map <silent> <leader>ss :source ~/_gvimrc<cr>
map <silent> <leader>ee :e ~/_gvimrc<cr>
autocmd! bufwritepost _gvimrc source ~/_gvimrc

" extension
if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
endif
