:let g:gutentags_exclude_project_root=['/usr/local', '~/.vim']
:let g:gutentags_ctags_extra_args=['--langmap=python:+.pyw']
:set statusline+=%{gutentags#statusline('Gutentags:','')}
