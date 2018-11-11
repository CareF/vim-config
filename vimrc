let g:tex_flavor = 'latex'  " 将 .tex 后缀文件总是识别为 LaTeX 文件

call plug#begin('~/.vim/bundle') " vim-plug 初始化
" Plugin List 列表
" Plug 'rking/ag.vim'              " front end for the silver_searcher
" Plug 'kien/ctrlp.vim'            " Sublime Text Ctrl-P 
Plug 'Valloric/YouCompleteMe', {
			\'do': 'CXX=clang++ CC=clang CMAKE_CXX_FLAGS=-Ofast python install.py --clang-completer --system-libclang'}
			" \'do': 'CXX=clang++ CC=clang CMAKE_CXX_FLAGS=-Ofast LLVM_OPTS=\"$LLVM_OPTS --disable-terminfo\" python install.py --clang-completer'}
" snippets 支持插件 | 一个 snippet 合集
Plug 'SirVer/ultisnips' | Plug 'CareF/vim-snippets' 
Plug 'ervandew/supertab'              " YCM 和 snippets 辅助
Plug 'scrooloose/nerdtree',{'on':  'NERDTreeToggle'} | Plug 'Xuyuanp/nerdtree-git-plugin'
" 文件列表, on-demand load
Plug 'w0rp/ale'                       " 语法检查器
Plug 'xolox/vim-misc'                 " Required by vim-easytags
" Plug 'CareF/vim-easytags'             " Tag 自动生成和高亮
Plug 'ludovicchabant/vim-gutentags'   " Tag 管理
Plug 'majutsushi/tagbar'              " 类/函数/方法列表
Plug 'scrooloose/nerdcommenter'       " 添加注释助手 <Leader>cc/c<Space>...
Plug 'tpope/vim-surround'             " 添加和修改环绕 (如括号, 引号和 XML tag)
Plug 'terryma/vim-multiple-cursors'   " 类 Sublime Text 多光标
Plug 'qpkorr/vim-bufkill'             " 关闭 buffer 而不关闭窗口分区
Plug 'jlanzarotta/bufexplorer'        " Buffer 切换辅助 <Leader>be
Plug 'Yggdroot/indentLine'            " 在缩进语言前加对齐竖线
Plug 'Vimjas/vim-python-pep8-indent'  " PEP8 风格 Python 缩进
Plug 'jrosiek/vim-mark'               " 同时显示多个高亮关键词 <Leader>m
Plug 'lilydjwg/fcitx.vim'             " fcitx-IME 支持
Plug 'lervag/vimtex'                  " LaTeX 支持
Plug 'godlygeek/tabular'              " Required by vim-markdown
Plug 'plasticboy/vim-markdown'        " Markdown 整理和语法高亮
Plug 'suan/vim-instant-markdown'      " 自动编译显示 markdown
" Plug 'tpope/vim-fugitive'             " Git wrapper
Plug 'vim-airline/vim-airline'        " 下方状态栏 
" 配合'Droid Sans Mono for Powerline Regular' 字体
Plug 'vim-airline/vim-airline-themes' " airline 官方主题
Plug 'kien/rainbow_parentheses.vim'   " 使用不同颜色标记各级括号
Plug 'morhetz/gruvbox'                " 主题
" Plug 'tomasr/molokai'                 " 主题
call plug#end()

if has("gui_running")
	" UI
	colorscheme gruvbox
	" colorscheme molokai
	set background=dark       " Or light
	set guioptions-=T   " 隐藏工具栏
	set guioptions-=m   " 隐藏菜单栏
	set guifont=Monospace\ 12
	" set guifontwide=STHeiti " 双宽(eg 汉字) 字体
	" set guiheadroom=0   " 去掉底部保留空间
	set mouse-=a        " 禁用鼠标
	" 类似终端的复制粘贴
	inoremap <c-V> <Esc>"+pi
	vnoremap <c-C> "+y
else
	set background=dark       " Or light
endif

syntax on                 " 打开语法高亮
filetype on               " 打开文件类型支持
filetype plugin on        " 打开文件类型插件支持
filetype indent on        " 打开文件类型缩进支持

" set hidden                        " 允许未保存的 buffer 后台
set switchbuf=usetab,newtab       " 通过 quickfix 等行为切换 buffer 时的行为
set directory=~/.vim/.swapfiles// " 写临时文件
set autochdir                     " 打开文件时，自动 cd 到文件所在目录
set sessionoptions-=curdir        " Session 文件中应使用相对路径
set sessionoptions+=sesdir

" 内部编码
set fenc=utf-8
set fencs=utf-8,gbk,gb18030,gb2312,cp936,usc-bom,euc-jp
set enc=utf-8

" set textwidth=79      " 设置自动换行, 过分推广换行不好用..
autocmd FileType c,cpp,css,h,java,m,tex,sty,python set textwidth=77
autocmd FileType c,cpp,css,h,java,m,tex,sty,python set colorcolumn=78
" 设置自动换行, 并在换行处显示
set formatoptions+=mM " 允许对多字节字符换行(m), 并避免在行合并时补空格(M)
" autocmd FileType html,conf,fstab set textwidth=0
autocmd FileType markdown,md set formatoptions-=m

set pastetoggle=<F9>           " 粘贴模式, 暂时关闭自动缩进
set backspace=indent,eol,start " 在insert模式下能用删除键进行删除到上一行
set whichwrap=b,s,<,>,[,]      " 移动光标时运行跨行
" 以下文件类型，敲 {<回车> 后，自动加入反括号 }
autocmd FileType c,cpp,css,h,java,js,nginx,scala,go,m,tex,bib,sty inoremap  <buffer>  {<CR> {<CR>}<Esc>O

set number                " 显示行号
set scrolloff=4           " 光标移动到倒数第5行时开始滚屏
set cursorline            " 高亮光标所在行
set cursorcolumn          " 高亮光标所在列
set hlsearch              " 高亮检索内容
set showmatch             " 输入成对括号时跳转匹配括号
set matchtime=1           " 跳转时间, 单位 0.1s
set conceallevel=0        " 语法隐藏: eg. Markdown [text](url) show as text
let g:tex_conceal='abdgs' " tex 的代码隐藏规则

set shiftwidth=4        " 设置缩进宽度为 4 个空格
set tabstop=4
set softtabstop=4
set autoindent          " 自动缩进
set cindent             " 对于 C 系列的缩进优化
autocmd FileType python set list lcs=tab:\¦\    " 在 tab 键时标记位置
" set expandtab           " 按 tab 键时候自动输入空格

set ignorecase  " 搜索时，忽略大小写
set smartcase   " 搜索时，智能大小写
" set nohlsearch  " 关闭搜索高亮
set incsearch   " incremental search 

" 以下文件类型, 拼写检查
autocmd FileType tex,md,markdown setlocal spell spelllang=en_us,cjk
let g:tex_comment_nospell=1      " 不检查 tex 文档的注释区域拼写 
" 在 insert mode 快速拼写检查
imap <F2> <Esc>[slz=`]a
" 拼写错误标识样式
" hi clear SpellBad
" hi SpellBad cterm=underline,bold ctermfg=red
" hi clear SpellRare
" hi SpellRare cterm=underline,bold

if has("autocmd")   " 打开时光标放在上次退出时的位置
	autocmd BufReadPost *
				\ if line("'\"") > 0 && line ("'\"") <= line("$") |
				\	exe "normal g'\"" |
				\ endif
endif

" 自动添加文件头
au BufNewFile *.py call ScriptHeader()
au BufNewFile *.sh call ScriptHeader()
au BufNewFile *.tex call ScriptHeader()

set modeline " 文件底部的模式行
function ScriptHeader()
	" Credit to bigeagle
	if &filetype == 'python'
		let header = "#!/usr/bin/env python"
		let coding = "# -*- coding:utf-8 -*-"
		let modeline = "# vim: ts=4 sw=4 sts=4 expandtab"
		" ts for tabstop, sw for shiftwidth, sts for softtabstop
	elseif &filetype == 'sh'
		let header = "#!/bin/bash"
	elseif &filetype == 'tex'
		let header = "%!TEX program = xelatex"
		let rootpath = "%!TEX root = "
		let options = "%!TEX option = "
		let modeline = "% vim: ts=4 sw=2 sts=4 expandtab"
	endif
	let line = getline(1)
	if line == header
		return
	endif
	normal m'
	call append(0,header)
	if &filetype == 'python'
		call append(1, coding)
		call append(3, modeline)
	elseif &filetype == 'tex'
		call append(1, rootpath)
		call append(2, options)
		call append(4, modeline)
	endif
	normal ''
endfunction

" 高亮光标下的单词
" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
" Type z/ to toggle highlighting on/off.
nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction

" 插件配置部分
source ~/.vim/config/vim-markdown.vim
" source ~/.vim/config/python-mode.vim
source ~/.vim/config/vim-instant-markdown.vim
source ~/.vim/config/vimtex.vim
source ~/.vim/config/youcompleteme.vim
source ~/.vim/config/rainbow_parentheses.vim
source ~/.vim/config/ultisnips.vim
source ~/.vim/config/indentline.vim
source ~/.vim/config/vim-airline.vim
source ~/.vim/config/fcitx.vim
source ~/.vim/config/nerdtree.vim
source ~/.vim/config/nerdcommenter.vim
source ~/.vim/config/supertab.vim
source ~/.vim/config/tagbar.vim
source ~/.vim/config/bufexplorer.vim
" source ~/.vim/config/easytags.vim
" source ~/.vim/config/syntastic.vim
source ~/.vim/config/gutentags.vim
source ~/.vim/config/ale.vim
if filereadable(expand("~/.vim/config/local.vim"))
	source ~/.vim/config/local.vim
endif
