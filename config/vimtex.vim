let g:vimtex_complete_img_use_tail=1          " 配合 \graphicspath, 补全图片时仅补全图片尾
let g:vim_fold_enabled=1                      " 允许折叠
let g:vimtex_fold_preamble=1                  " 折叠tex文件头
let g:vimtex_indent_enabled=1                 " 允许缩进
let g:vimtex_imaps_leader='`'                 " insert mode mapping
let g:vimtex_index_resize=1                   " 允许 index window 随 vim 自动改变大小
let g:vimtex_index_split_pos='vert leftabove' " index window 的默认位置
let g:vimtex_index_split_width=30             " index window 的默认大小
let g:vimtex_complete_enabled=1               " cite 和 ref 补全
let g:vimtex_complete_recursive_bib=1         " 递归查找 cite
let g:vimtex_latexmk_options='-pdf -pdflatex="xelatex -synctex=1 \%S \%O" -verbose -file-line-error -interaction=nonstopmode'
let g:vimtex_quickfix_ignored_warnings = [
    \ 'fontspec warning script-not-exist',  
  \]
let g:vimtex_quickfix_open_on_warning=0       " 只有 warning 时候不打开 quickfix
let g:vimtex_view_method='general'            " 使用下方的设置
let g:vimtex_view_general_viewer = 'qpdfview' " 使用 qpdfview 并实现正向搜索
let g:vimtex_view_general_options
    \ = '--unique @pdf\#src:@tex:@line:@col'
let g:vimtex_view_general_options_latexmk = '--unique'
" 反向搜索在需要在 qpdfview 内实现
" let g:vimtex_view_general_callback=''         " 打开 PDF 浏览器后回调. TBD: 定位到当前 
" let g:vimtex_fold_enabled=1          " enable folding

" Youcompleteme support
if !exists('g:ycm_semantic_triggers')
let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = [
    \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
    \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
    \ 're!\\hyperref\[[^]]*',
    \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
    \ 're!\\(include(only)?|input){[^}]*',
    \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
    \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
    \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*',
    \ ]
