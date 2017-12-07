let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_post_args = "--ignore=E501,E225,E227,E121,E123,E126,E226,E24,E704,E402"
" E501 line too long
" E225 missing whitespace around operator
" E226(*) missing whitespace around arithmetic operator
" E227 missing whitespace around bitwise or shift operator
" E121(*) continuation line under-indented for hanging indent
" E123(*) closing braket does not match indentation of opning braket's line
" E126(*) continuation line with same indent as next logical line
" E241(2)(*) multiple space (tab) after ','
" E704(*) multiple statements on one line (def)
" E402 module level import not at top of file
" (* for default setting)
let g:syntastic_c_compiler = 'clang'

nnoremap <Leader>ln :lnext<CR>
nnoremap <Leader>lb :lprevious<CR>

nnoremap <Leader>sc :SyntasticCheck<CR>

let g:syntastic_mode_map = {
	\ "mode": "passive", 
	\ "active_filetypes": ["c"], 
	\ "passive_filetypes": [] }
