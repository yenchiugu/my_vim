set nocompatible          "不要兼容vi
filetype off              "必须的设置：

"Color Settings {
set colorcolumn=85           "彩色显示第85行
set t_Co=256                 "设置256色显示
set background=dark          "使用color solarized
set cursorline               "设置光标高亮显示
set cursorcolumn             "光标垂直高亮
set ttyfast
set ruler
set backspace=indent,eol,start
"colorscheme solarized

if has('mouse')
  set mouse=a
endif

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

let g:solarized_termtrans  = 1
let g:solarized_termcolors = 256
let g:solarized_contrast   = "high"
let g:solarized_visibility = "high"
"}
"
"tab setting {
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
"}

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set scrolloff=3
set fenc=utf-8
set autoindent
set hidden

set relativenumber                             "相对行号 要想相对行号起作用要放在显示行号后面
set wrap                                       "自动换行
set guifont=Inconsolata:h12                    "GUI界面里的字体，默认有抗锯齿
set isk+=-                                     "将-连接符也设置为单词

set ignorecase "设置大小写敏感和聪明感知(小写全搜，大写完全匹配)
set smartcase
"set gdefault
set incsearch
set showmatch
set hlsearch
"
set numberwidth=4          "行号栏的宽度
set whichwrap=b,s,<,>,[,]  "让退格，空格，上下箭头遇到行首行尾时自动移到下一行（包括insert模式）

if exists('+autochdir')
  " 文件路径设置为当前路径
  set autochdir
endif

"插入模式下移动
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>
"inoremap <c-h> <left>

"===================================================
""修改leader键为逗号
let mapleader=","
imap jj <esc>

"使用,w来垂直分割窗口，这样可以同时查看多个文件,如果想水平分割则<c-w>s
nnoremap <leader>w <c-w>v<c-w>l
nnoremap <leader>wc <c-w>c
nnoremap <leader>ww <c-w>w

""tab切换
nnoremap <leader>t gt
nnoremap <leader>r gT
"使用<leader>空格来取消搜索高亮
nnoremap <leader><space> :noh<cr>

"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"Indent Guides设置
let g:indent_guides_guide_size=1

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'ctrlp.vim'
Bundle 'The-NERD-tree'
"设置相对行号
nmap <leader>nt :NERDTree<cr>:set rnu<cr>
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.$','\~$']
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos=1
"
"Bundle 'The-NERD-Commenter'
"let NERDShutUp=1
""支持单行和多行的选择，//格式
"map <c-h> ,c<space>
"Bundle 'Valloric/YouCompleteMe'
Bundle 'minibufexplorerpp'

"放置在Bundle的设置后，防止意外BUG
filetype plugin indent on
syntax on
autocmd VimEnter * NERDTree | wincmd p

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
