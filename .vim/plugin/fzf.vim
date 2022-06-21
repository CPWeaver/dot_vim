"junegunn/fzf.vim
 " https://github.com/junegunn/fzf/wiki/Examples-(vim)#simple-mru-search
command! FZFMru call fzf#run({
\ 'source':  reverse(s:all_files()),
\ 'sink':    'edit',
\ 'options': '-m -x +s',
\ 'down':    '40%' })

 function! s:all_files()
  return extend(
  \ filter(copy(v:oldfiles),
  \        "v:val !~ 'fugitive:\\|NERD_tree\\|^/tmp/\\|.git/'"),
  \ map(filter(range(1, bufnr('$')), 'buflisted(v:val)'), 'bufname(v:val)'))
endfunction

" Leader Commands
nnoremap <space>t :Files<CR>
nnoremap <space>b :Buffers<CR>
nnoremap <space>m :History<CR>

nnoremap \ :Rg<space>
nnoremap <leader>ag :Rg<space>
vnoremap <leader>ag "xy :Rg <C-R>x
nnoremap <leader>sag :Rg <C-R><C-W>
nnoremap <space>ag :Rg<space>
vnoremap <space>ag "xy :Rg <C-R>x
nnoremap <space>sag :Rg <C-R><C-W>

" " bind K to grep highlighted text
" vnoremap K "xy :Rg "<C-R>x"<CR>
" " bind K to grep word under cursor
" nnoremap K :Rg "\b<C-R><C-W>\b"<CR>

nnoremap <leader>u :FZFMru<CR>

let g:fzf_history_dir = '~/.local/share/fzf-history'

