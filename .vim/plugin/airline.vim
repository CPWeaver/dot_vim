" ---------------
" airline
" ---------------
"let g:airline_solarized_bg = 'dark'
let g:airline_theme = 'hybrid'
let g:airline_powerline_fonts = 1
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''
let g:airline_detect_modified = 1
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#fzf#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
" let g:airline#extensions#tagbar#enabled = 1
let g:airline_mode_map = {
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'v'  : 'V',
      \ 'V'  : 'VL',
      \ 'c'  : 'CMD',
      \ '' : 'VB',
      \ }

" 'reverse' attribute in hybrid color scheme causes wrong colors.
" w0ng/hybrid.vim L320, L321
hi statusline cterm=NONE gui=NONE
hi StatusLineNC cterm=NONE gui=NONE

