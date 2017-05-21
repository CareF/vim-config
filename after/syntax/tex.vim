" Already supported by vimtex
" if exists('b:vimtex.packages.array') && get(g:, 'tex_fast', 'M') =~# 'M'
  " syntax clear texMathZoneX
  " if has('conceal') && &enc ==# 'utf-8' && get(g:, 'tex_conceal', 'd') =~# 'd'
    " syntax region texMathZoneX matchgroup=Delimiter start="\([<>]{\)\@<!\$" skip="\%(\\\\\)*\\\$" matchgroup=Delimiter end="\$" end="%stopzone\>" concealends contains=@texMathZoneGroup
  " else
    " syntax region texMathZoneX matchgroup=Delimiter start="\([<>]{\)\@<!\$" skip="\%(\\\\\)*\\\$" matchgroup=Delimiter end="\$" end="%stopzone\>" contains=@texMathZoneGroup
  " endif
" endif
