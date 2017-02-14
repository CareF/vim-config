map <C-n> :NERDTreeToggle<CR>

" 当仅剩下 nerdtree 窗体时关闭 vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
