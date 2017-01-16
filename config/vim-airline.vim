set noshowmode    " 不再显示 vim 自带的 mode 指示
set laststatus=2  " 一直显示 status bar
let g:airline#extensions#tabline#enabled = 1 " Tab lines for buffer
let g:airline_powerline_fonts=1 " Enable powerline fonts, powerline-fonts is required. (`pacman -S powerline-fonts`, see https://powerline.readthedocs.io/en/master/installation.html#patched-fonts 
" let g:airline_symbols = get(g:, 'airline_symbols', {})
" let g:airline_symbols.space = "_"
" let g:airline#extensions#tabline#left_alt_sep = ''
" let g:airline#extensions#tabline#right_alt_sep = ''
" let g:airline_theme='dark'  " https://github.com/vim-airline/vim-airline/wiki/Screenshots for more
