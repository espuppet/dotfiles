""""""""""
" Vundle "
""""""""""
 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " original repos on github

 "文件管理
 Bundle 'scrooloose/nerdtree'

 "快速搜索切换文件
 Bundle 'kien/ctrlp.vim'

 "代码片段补全
 Bundle 'SirVer/ultisnips'

 "语法检查
 Bundle 'scrooloose/syntastic'

 "Tab补全
 Bundle 'ervandew/supertab'

 "状态栏
 Bundle 'bling/vim-airline'

 "快速移动
 Bundle 'Lokaltog/vim-easymotion'

 "Buffer查看
 Bundle 'jeetsukumaran/vim-buffergator'

 "Git集成
 Bundle 'tpope/vim-fugitive'

 "智能缩进
 Bundle 'nathanaelkane/vim-indent-guides'

 "Markdown语法高亮
 Bundle 'hallison/vim-markdown'

 "主题
 Bundle 'altercation/vim-colors-solarized'

 "智能行号
 Bundle 'myusuf3/numbers.vim'

 "日历
 Bundle 'mattn/calendar-vim'

 "缩进对齐
 Bundle 'nathanaelkane/vim-indent-guides'

 "Bundle 'Valloric/YouCompleteMe'
 "Bundle 'Shougo/neocomplcache'
 "Bundle 'garbas/vim-snipmate'
 "Bundle 'honza/snipmate-snippets'
 "Bundle 'scrooloose/snipmate-snippets'
 " snipmate dependencies
 "Bundle 'MarcWeber/vim-addon-mw-utils'
 "Bundle 'tomtom/tlib_vim'


 "Bundle 'vim-scripts/Conque-Shell'

 "Bundle 'majutsushi/tagbar'
 "Bundle 'wincent/Command-T'

 "Bundle 'humiaozuzu/TabBar'

 "Bundle 'spf13/PIV'

 " vim-scripts repos
 "Bundle 'taglist.vim'
 
 Bundle 'vimwiki'

 "符号高亮
 Bundle 'Mark'

 "h/c/cpp切换
 Bundle 'a.vim'

 "Blackboard主题
 Bundle 'blackboard.vim'

 "Doxygen注释
 "Bundle 'DoxygenToolkit.vim'

 "标签栏
 Bundle 'Tagbar'

 "弹出补全栏
 Bundle 'AutoComplPop'

 "多彩高亮
 Bundle 'TagHighlight'

 "文档结构
 "Bundle 'VOoM'

 Bundle 'matchit.zip'
 "Bundle 'ShowMarks'
 "Bundle 'VimIM'
 "Bundle 'Markdown'
 "Bundle 'project.tar.gz'
 "Bundle 'minibufexpl.vim'
 "Bundle 'genutils'
 "Bundle 'lookupfile'
 "Bundle 'bufexplorer.zip'
 "Bundle 'ZenCoding.vim'
 "Bundle 'c.vim'
 " non github repos
 " ...

 filetype plugin indent on     " required!

""""""""""""""
" easymotion "
""""""""""""""
let g:EasyMotion_leader_key = '<Leader>'

"Avoid mapping conflict
let g:EasyMotion_mapping_n = '_.'

"""""""""""""
"  vimwiki  "
"'"""""""""""
let g:vimwiki_use_mouse = 1
let g:vimwiki_CJK_length = 1
let g:vimwiki_camel_case = 0
let g:vimwiki_menu = ''
if g:iswindows==1
    let g:vimwiki_list = [{'path': 'E:/Dropbox/Src/Wiki/',
                \ 'ext': '.md',
                \ 'syntax': 'markdown',
                \ 'path_html': 'D:/wamp/www/html/',
				\ 'html_header': 'D:/wamp/www/html/template/header.tpl',
				\ 'html_footer': 'D:/wamp/www/html/template/footer.tpl'},
                \ {'path': 'E:/Dropbox/Src/NewWiki/',
                \ 'ext': '.md'}]
else
	let g:vimwiki_list = [{'path': '/media/src/Wiki/',
                \ 'ext': '.md', 
                \ 'syntax': 'markdown'},
                \ {'path': '/media/src/NewWiki',
                \ 'ext': '.md'}]
endif

"""""""""""""""""
" neocomplcache "
"""""""""""""""""
" Use neocomplcache.
"let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
"let g:neocomplcache_enable_smart_case = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_disable_auto_complete=1
"let g:neocomplcache_min_syntax_length=3
"set completeopt-=preview

""""""""""
" TagBar "
""""""""""
nmap <F6> :TagbarToggle<CR>
let g:tagbar_left=1
let g:tagbar_width=30

""""""""""""
" NERDTree "
""""""""""""
"autocmd VimEnter * NERDTree
let NERDTreeChDirMode=2
let NERDTreeWinSize=30
let NERDTreeWinPos = "right"
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
nmap <F7> :NERDTreeToggle<CR>

""""""""""""
" Calendar "
""""""""""""
if iswindows == 1
    let calendar_diary="/media/Src/diary"
else
    let calendar_diary="E:\Dropbox\Src\diary"
endif

""""""""""""
" SuperTab "
""""""""""""
let g:SuperTabRetainCompletiontype = 2
let g:supertabdefaultcompletionType = "<C-X><C-U>"

"""""""""""""""""""""
" vim-indent-guides "
"""""""""""""""""""""
let g:indent_guides_guide_size=1
