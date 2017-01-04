" let g:Tex_MainFileExpression = 'MainFile(modifier)'
" 
" function! MainFile(fmod)
"     if glob('*.latexmain') != ''
"         return fnamemodify(glob('*.latexmain'), a:fmod)
"     else
"         return ''
"     endif
" endfunction

function ComplieWithXeTeX()
    let oldRule = g:Tex_CompileRule_pdf
    let g:Tex_CompileRule_pdf = 'xelatex --synctex=-1 -src-specials -interaction=nonstopmode $*'
    call Tex_RunLaTeX()
    let g:Tex_CompileRule_pdf = oldRule
endfunction
map <Leader>lx :<C-U>call ComplieWithXeTeX()<CR>

function ComplieWithlatexmk()
    let oldRule = g:Tex_CompileRule_pdf
    let g:Tex_CompileRule_pdf = 'latexmk --synctex=-1 -src-specials -interaction=nonstopmode $*'
    call Tex_RunLaTeX()
    let g:Tex_CompileRule_pdf = oldRule
endfunction
map <Leader>lm :<C-U>call ComplieWithlatexmk()<CR>

function CleanTempFiles()
    execute '!latexmk -c'
endfunction
map <Leader>lc :<C-U>call CleanTempFiles()<CR>
