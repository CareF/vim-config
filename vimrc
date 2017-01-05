let g:tex_flavor = 'latex'  " 将 .tex 后缀文件总是识别为 LaTeX 文件

call plug#begin('~/.vim/bundle') " vim-plug 初始化
" Plugin List 列表
" Plug 'jrosiek/vim-mark'
" Plug 'bling/vim-airline'
" Plug 'rking/ag.vim'
" Plug 'kien/ctrlp.vim'
" Plug 'Valloric/MatchTagAlways'
" Plug 'scrooloose/nerdtree',{ 'on':  'NERDTreeToggle' } " 文件列表, on-demand load
" Plug 'Yggdroot/indentLine'  " 显示缩进标记线 
" Plug 'scrooloose/syntastic' " 语法检查器，非常有用
" Plug 'majutsushi/tagbar' " 类/函数/方法列表
" Plug 'vim-latex/vim-latex'          " LaTeX 支持打包
Plug 'Valloric/YouCompleteMe', {'do': 'CXX=clang++ CC=clang python install.py --clang-completer'}
Plug 'Yggdroot/indentLine'          " 在缩进语言前加对齐竖线
Plug 'lervag/vimtex'                " LaTeX 支持 
Plug 'lilydjwg/fcitx.vim'           " fcitx-IME 支持
Plug 'SirVer/ultisnips'             " snippets 支持插件
Plug 'honza/vim-snippets'           " 一个 snippet 合集
Plug 'godlygeek/tabular'            " Required by vim-markdown
Plug 'plasticboy/vim-markdown'      " Markdown 整理和语法高亮
Plug 'suan/vim-instant-markdown'    " 自动编译显示 markdown
Plug 'python-mode/python-mode'      " Python 语法检查, 运行, 文档等
Plug 'kien/rainbow_parentheses.vim' " 使用不同颜色标记各级括号
call plug#end()

set directory=~/.vim/.swapfiles// " 写临时文件
set hidden            " buffer 后台
set autochdir         " 打开文件时，自动 cd 到文件所在目录
set ttimeoutlen=100   " 设置超时, 为了 vim-fcitx IME 支持不要导致太长的延迟
set pastetoggle=<F9> " 粘贴模式, 暂时关闭自动缩进
set formatoptions+=mM " 允许对multi_byte字符换行 (m), 并避免在行合并时补空格 (M)
set textwidth=77      " 设置自动换行
autocmd FileType html set textwidth=0

syntax on                 " 打开语法高亮
filetype on               " 打开文件类型支持
filetype plugin on        " 打开文件类型插件支持
filetype indent on        " 打开文件类型缩进支持
set number                " 显示行号
set scrolloff=5           " 光标移动到倒数第5行时开始滚屏
set autoindent            " 自动缩进
set cindent               " 对于 C 系列的缩进优化
set modeline              " 底部的模式行
set cursorline            " 高亮光标所在行
set cursorcolumn          " 高亮光标所在列
set showmatch             " 高亮括号配对
set conceallevel=0        " 语法隐藏: eg. Markdown [text](url) show as text
let g:tex_conceal='abdgs' " tex 的代码隐藏规则

" 设置缩进宽度为 4 个空格
set shiftwidth=4 
set tabstop=4
set softtabstop=4
set expandtab     " 按 tab 键时候自动输入空格

set matchtime=0
set ignorecase    " 搜索时，忽略大小写
" set smartcase   " 搜索时，智能大小写
" set nohlsearch  " 关闭搜索高亮
" set incsearch   " incremental search 

"在insert模式下能用删除键进行删除
set backspace=indent,eol,start

" 以下文件类型，敲 {<回车> 后，自动加入反括号 }
autocmd FileType c,cpp,css,h,java,js,nginx,scala,go,m,tex,bib,sty inoremap  <buffer>  {<CR> {<CR>}<Esc>O

" 以下文件类型, 拼写检查
autocmd FileType tex,md,markdown setlocal spell spelllang=en_us,cjk
let g:tex_comment_nospell=1                     " 不检查 tex 文档的注释区域拼写 
hi clear SpellBad
hi SpellBad cterm=underline,bold ctermfg=red
hi clear SpellRare
hi SpellRare cterm=underline,bold

" 自动添加文件头
au BufNewFile *.py call ScriptHeader()
au BufNewFile *.sh call ScriptHeader()

function ScriptHeader()
    if &filetype == 'python'
        let header = "#!/usr/bin/env python"
        let coding = "# -*- coding:utf-8 -*-"
        let cfg = "# vim: ts=4 sw=4 sts=4 expandtab"
    elseif &filetype == 'sh'
        let header = "#!/bin/bash"
    endif
    let line = getline(1)
    if line == header
        return
    endif
    normal m'
    call append(0,header)
    if &filetype == 'python'
        call append(1, coding)
        call append(4, cfg)
    endif
    normal ''
endfunction

" 插件配置部分
source ~/.vim/config/vim-markdown.vim
source ~/.vim/config/python-mode.vim
source ~/.vim/config/rainbow_parentheses.vim
source ~/.vim/config/vim-instant-markdown.vim
source ~/.vim/config/vimtex.vim
source ~/.vim/config/youcompleteme.vim
source ~/.vim/config/indentline.vim
" source ~/.vim/config/vim-latex.vim
