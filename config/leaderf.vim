let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg','.vscode'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}
let g:Lf_RootMarkers = [
            \'.git', '.hg', '.svn', '.vscode', '.project', '.project2']
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_CtagsFuncOpts = {
            \'python': '--langmap=python:+.pyw'
            \}
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_CacheDirectory = '.swapfiles'
