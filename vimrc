"""""""""""""""""""""""""""""
" espuppet's vim config file"
"                           "
" Version       2.0         "
" Update Time:  2013.12.09  "
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
set t_Co=256
"set guifont=DejaVu\ Sans\ Mono\ 11
set guifont=YaHeiConsolasHybrid\11
set guifontwide=Wenquanyi\ Micro\ Hei\ Mono\ 12
set termencoding=utf-8
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
noremap \ ,
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
  set term=screen-256color
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

"Dynamic cursor shape according to vim mode(currently not work)
if exists('$ITERM_PROFILE')
    if exists('$TMUX')
        let &t_SI = "\<Esc>[3 q"
        let &t_EI = "\<Esc>[0 q"
    else
        let &t_SI = "\<Esc>]50;CursorShape=1\x7"
        let &t_EI = "\<Esc>]50;CursorShape=0\x7"
    endif
end

" for tmux to automatically set paste and nopaste mode at the time pasting (as
" happens in VIM UI)
function! WrapForTmux(s)
    if !exists('$TMUX')
        return a:s
    endif

    let tmux_start = "\<Esc>Ptmux;"
    let tmux_end = "\<Esc>\\"

    return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

map <silent> <leader>ss :source ~/.vimrc<cr>
map <silent> <leader>ee :e ~/.vimrc<cr>
autocmd! bufwritepost .vimrc source ~/.vimrc

" extension
if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
endif
if filereadable(expand("~/cscope_maps.vim"))
    source ~/cscope_maps.vim
endif
