:let g:gutentags_exclude_project_root=['/usr/local', '~/.vim']
:let g:gutentags_ctags_extra_args=['--langmap=python:+.pyw']
:let g:gutentags_generate_on_missing=0
:let g:gutentags_enabled_on_missing=0
:let g:gutentags_generate_on_new=0
:set statusline+=%{gutentags#statusline('Gutentags:','')}
