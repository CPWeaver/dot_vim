" --------
" vim-move
" --------

let g:move_map_keys = 0

nmap <M-j> <Plug>MoveLineDown
nmap <M-k> <Plug>MoveLineUp
vmap <M-j> <Plug>MoveBlockDown
vmap <M-k> <Plug>MoveBlockUp
" osx mappings, option+j/k with option mapped to ESC+
nmap ∆ <Plug>MoveLineDown
nmap ˚ <Plug>MoveLineUp
vmap ∆ <Plug>MoveBlockDown
vmap ˚ <Plug>MoveBlockUp


