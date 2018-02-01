" -------
" Eclim
" -------
let g:EclimCompletionMethod='omnifunc'
let g:EclimLoggingDisabled=1
nnoremap <Leader>ef :JavaFormat<CR>
nnoremap <Leader>ei :JavaImport<CR>
nnoremap <Leader>eio :JavaImportOrganize<CR>
nnoremap <Leader>eg :JavaSearchContext -a tabnew<CR>
nnoremap <Leader>et :JavaHierarchy<CR>
nnoremap <Leader>er :JavaRename
nnoremap <Leader>ej :JUnit<CR>
nnoremap <Leader>ejf :JUnit %<CR>
nnoremap <Leader>ec :JavaCorrect<CR>
nnoremap <Leader>esr :JavaSearch -x references -s all<CR>
nnoremap <Leader>eot :JavaSearch -t type -s all -p
nnoremap <Leader>eor :LocateFile<CR>
nnoremap <Leader>ep :ProjectProblems!<CR>
nnoremap <Leader>erp :ProjectRefresh<CR>
nnoremap <Leader>era :ProjectRefreshAll<CR>
nnoremap <Leader>eo :JavaImpl<CR>

" Disable autocmoplete scratch buffer
set completeopt-=preview
set completeopt+=longest

