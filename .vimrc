"设置编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
"显示行号
set number 
"突出显示当前行
set cursorline 
"突出显示当前列
"set cursorcolumn 
"启用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key
"显示括号匹配
set showmatch
"设置Tab长度为4空格'
set tabstop=4
"设置自动缩进长度为4空格'
set shiftwidth=4
"继承前一行的缩进方式，适用于多行注释'
set autoindent
"设置粘贴模式
set paste
"显示空格和tab键
set listchars=tab:>-,trail:-
"总是显示状态栏
set laststatus=2
"显示光标当前位置
set ruler
"搜索高亮显示
set hlsearch
"打开文件类型检测
filetype plugin indent on
"让vimrc配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
"设置ctrl+s为保存
map <C-S> :w<CR>
"插件管理
call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree' "目录树
Plug 'flazz/vim-colorschemes'
Plug 'fatih/vim-go',{'do':':GoUpdateBinaries'}
call plug#end()

"设置项目目录自动开启
autocmd VimEnter * NERDTree
 " 使用 powerline 打过补丁的字体
let g:airline_powerline_fonts = 1
" 开启 tabline
let g:airline#extensions#tabline#enabled        = 1 
 " 显示 buffer 编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" enable ale integration
let g:airline#extensions#ale#enabled            = 1 
" 状态栏显示图标设置
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


"配色方案
set background=dark
set t_co=256
colorscheme molokai 
let g:molokai_original = 1
let g:rehash256 = 1

syntax on







