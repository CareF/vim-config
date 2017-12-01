let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = '✗'
let airline#extensions#ale#warning_symbol = '⚠'
nmap <C-k> <Plug>(ale_previous_wrap)
nmap <C-j> <Plug>(ale_next_wrap)
