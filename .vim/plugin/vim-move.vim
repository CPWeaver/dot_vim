" --------
" vim-move
" --------

let g:move_map_keys = 0

nmap <M-Down> <Plug>MoveLineDown
nmap <M-Up> <Plug>MoveLineUp
vmap <M-Down> <Plug>MoveBlockDown
vmap <M-Up> <Plug>MoveBlockUp
" osx mappings, option+j/k with option mapped to ESC+
nmap ∆ <Plug>MoveLineDown
nmap ˚ <Plug>MoveLineUp
vmap ∆ <Plug>MoveBlockDown
vmap ˚ <Plug>MoveBlockUp


