" ---------------
" Fugitive
" ---------------
nnoremap <Leader>gb :Git blame<CR>
" Show commit log of current file
nnoremap <Leader>gll :Glog --graph --pretty=oneline --abbrev-commit -n 20<CR>
nnoremap <Leader>gc :Gcommit -v<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>g :Git<CR>
nnoremap <Leader>gp :Git push<CR>
 " Mnemonic, gu = Git Update
nnoremap <Leader>gu :Git pull<CR>
nnoremap <Leader>gd :Gdiff<CR>
" Exit a diff by closing the diff window
nnoremap <Leader>gx :wincmd h<CR>:q<CR>

noremap <Leader>gh :GBrowse %<CR>
noremap <Leader>gM :GBrowse origin/main:%<CR>
noremap <Leader>gm :GBrowse origin/master:%<CR>

" Start git command
" nnoremap <leader>gi :Git<space>
" Undo the last commit
command! Gcundo :Git reset HEAD~1

autocmd FileType fugitiveblame nmap <buffer> q gq
autocmd FileType fugitive nmap <buffer> q gq
