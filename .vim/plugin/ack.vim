" ---------------
"mileszs/ack.vim
" ---------------

if executable('rg')
  let g:ackprg = 'rg --vimgrep --no-heading'
elseif executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:ackhighlight = 1

nnoremap <silent> <leader>as :AckFromSearch<CR>
nnoremap \ :Ack!<space>
nnoremap <leader>ag :Ack!<space>
vnoremap <leader>ag "xy :Ack! "<C-R>x"
nnoremap <leader>sag :Ack! <C-R><C-W>

" bind K to grep highlighted text
vnoremap K "xy :Ack! "<C-R>x"<CR>
" bind K to grep word under cursor
nnoremap K :Ack! "\b<C-R><C-W>\b"<CR>


" nnoremap <silent> <leader>as :AgFromSearch<CR>
" nnoremap <leader>ag :Ag<space>
" vnoremap <leader>ag "xy :Ag "<c-r>x"
" nnoremap <leader>sag :Ag <c-r><c-w>
" let g:ag_highlight=1
" let g:ag_prg="ag --column --smart-case"

