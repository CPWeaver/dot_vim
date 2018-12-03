" --------------
" vim-go
" --------------
let g:go_bin_path = "/Users/cweaver/dev/invision/go/bin"

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

let g:go_def_mapping_enabled = 0

let g:go_highlight_types = 1
let g:go_highlight__extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1

let g:go_term_enabled = 1
let g:go_term_mode = "below split"
let g:go_term_height = 15

let $GINKGO_EDITOR_INTEGRATION = "true"

 noremap <leader>got :GoTest<CR>
 noremap <leader>gotf :GoTestFunc<CR>
 noremap <leader>goc :GoCoverageToggle<CR>
 noremap <leader>god :GoDef<CR>
 noremap <leader>gi :GoInstall -i<CR>

 autocmd FileType go nmap <leader>goo   <Plug>(go-debug-continue)
 autocmd FileType go nmap <leader>gop   <Plug>(go-debug-print)
 autocmd FileType go nmap <leader>gob   <Plug>(go-debug-breakpoint)
 autocmd FileType go nmap <leader>gon  <Plug>(go-debug-next)
 autocmd FileType go nmap <leader>gos  <Plug>(go-debug-step)
 " autocmd FileType go nmap <leader>gob :<C-u>call <SID>build_go_files()<CR>



