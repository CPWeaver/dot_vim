" ---------------
" Fugitive
" ---------------
nnoremap <Leader>gb :Gblame<CR>
" Show commit log of current file
nnoremap <Leader>gl :Glog<CR>
nnoremap <Leader>gll :Glog --graph --pretty=oneline --abbrev-commit -n 20<CR>
nnoremap <Leader>gc :Gcommit -v<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gp :Git push<CR>
 " Mnemonic, gu = Git Update
nnoremap <Leader>gu :Git pull<CR>
nnoremap <Leader>gd :Gdiff<CR>
" Exit a diff by closing the diff window
nnoremap <Leader>gx :wincmd h<CR>:q<CR>


nnoremap <Leader>gh :.Gbrowse<CR>
noremap <Leader>gm :.Gbrowse origin/master:%<CR>

" Start git command
" nnoremap <leader>gi :Git<space>
" Undo the last commit
command! Gcundo :Git reset HEAD~1

