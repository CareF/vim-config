:let g:easytags_async=1
:set cpoptions+=d "S.t. following ./ means relative to dir not file
:set tags=./tags;
:let g:easytags_dynamic_files=1 " 0 for always at ~/ ; 1 for priority at ./ ; 2 for always at ./
:let g:easytags_opts = ['--langmap=python:+.pyw']
" :let g:easytags_autorecurse = 0 "May be useful for some session file
