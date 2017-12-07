let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_lint_delay = 2000
let g:ale_python_flake8_options = '--ignore=E402'
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = '✗'
let airline#extensions#ale#warning_symbol = '⚠'
nmap <C-k> <Plug>(ale_previous_wrap)
nmap <C-j> <Plug>(ale_next_wrap)

au FileType python call PythonVer()

function PythonVer()
	if getline(1) =~ "python2"
		let b:ale_python_flake8_executable = "flake8-python2"
		" echo "Python2 detected"
	endif
endfunction
