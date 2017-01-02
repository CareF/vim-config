let g:python_host_prog='/usr/bin/python3'

call plug#begin('~/.vim/bundle') " vim-plug 初始化
" Plugin List
" Plug 'jrosiek/vim-mark'
" Plug 'bling/vim-airline'
Plug 'vim-latex/vim-latex'
Plug 'godlygeek/tabular' " Required by vim-markdown
Plug 'plasticboy/vim-markdown'
" Plug 'suan/vim-instant-markdown' " Buggy

call plug#end()



set hidden            " buffer 后台
set pastetoggle=<F9>  " 暂时关闭自动缩进, 用于粘贴
set formatoptions+=mM "允许对multi_byte字符换行, 并避免在行合并时补空格
set textwidth=70      " 设置自动换行

set number           " 显示行号
syntax on            " 打开语法高亮
filetype on          " 打开文件类型支持
filetype plugin on   " 打开文件类型插件支持
filetype indent on   " 打开文件类型缩进支持
set autoindent       " 自动缩进
set modeline         " 底部的模式行
set cursorline       " 高亮光标所在行
set cursorcolumn     " 高亮光标所在列

" 设置缩进宽度为 4 个空格
set shiftwidth=4 
set tabstop=4
set softtabstop=4
set expandtab     " 按 tab 键时候自动输入空格

set showmatch     " 高亮括号配对
set matchtime=0
" set smartcase     " 搜索时，智能大小写
set ignorecase  " 搜索时，忽略大小写
" set nohlsearch  " 关闭搜索高亮
" set incsearch   " incremental search 
set autochdir     " 打开文件时，自动 cd 到文件所在目录

" 以下文件类型，敲 {<回车> 后，自动加入反括号 }
au FileType c,cpp,css,h,java,js,nginx,scala,go,m,tex,bib,sty inoremap  <buffer>  {<CR> {<CR>}<Esc>O


" 插件配置部分
source ~/.vim/config/markdown.vim
