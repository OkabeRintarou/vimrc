set nocompatible 	"be iMproved
filetype off		" required!

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here
"
" original repos on github
" 自动补全插件
Bundle 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
" 配色插件
Bundle 'tomasr/molokai'
Bundle 'altercation/vim-colors-solarized'
" 自动对齐
Bundle 'godlygeek/tabular'
" 括号自动补齐
Bundle 'Raimondi/delimitMate'
" python自动缩进代码
Bundle 'hynek/vim-python-pep8-indent'
" 文档树查看
Bundle 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
" zeal文档插件
Bundle 'KabbAmine/zeavim.vim'
let g:zv_added_files_type = {
	\ 'py':'python',
	\ }
" go语言插件
Bundle 'dgryski/vim-godef' 
Bundle 'Blackrush/vim-gocode' 
Bundle 'majutsushi/tagbar'

" 基础设置
set number        " 设置行号
set tabstop=4	  " Tab大小
set shiftwidth=4  " 缩进大小
set softtabstop=4
set autoindent
set cindent

syntax enable
set t_Co=256
set background=dark
"let g:solarized_termcolors=256
colorscheme solarized
colorscheme molokai
set guifont=Monospace\ 16

" 离开INSERT模式时关闭Preview窗口
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif 


" 透明
hi Normal ctermfg=252 ctermbg=none
