" --------------
" vim-go
" --------------
" let g:go_bin_path = "/Users/cweaver/dev/invision/go/bin"

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

" let g:go_auto_sameids = 1
" let g:go_auto_type_info = 1
let g:go_code_completion_enabled = 0

let g:go_highlight_types = 1
let g:go_highlight__extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
" let g:go_fmt_command="goimports"
let g:go_fmt_command="gopls"
let g:go_rename_command="gopls"
let g:go_metalinter_autosave = 0
let g:go_gopls_staticheck = 1
let g:go_gopls_complete_unimported = 1
" let g:go_alternate_mode='vsplit'
" let g:go_gopls_use_placeholders = 1

" let g:go_term_enabled = 1
" let g:go_term_mode = "below split"
" let g:go_term_height = 15

let $GINKGO_EDITOR_INTEGRATION = "true"

 noremap <leader>got :GoTest<CR>
 noremap <leader>te :GoTest<CR>
 noremap <leader>gotf :GoTestFunc<CR>
 noremap <leader>v :GoCoverage<CR>
 noremap <leader>vv :GoCoverageClear<CR>
 noremap <leader>god :GoDef<CR>
 noremap <leader>gi :GoInstall -i<CR>
 noremap <leader>gr :GoReferrers<CR>
 noremap <leader>a :GoAlternate<CR>
 noremap ge :GoGenerate<CR>

 autocmd FileType go nmap dst   :GoDebugStart<CR>
 autocmd FileType go nmap dop   :GoDebugStop<CR>
 autocmd FileType go nmap dc   <Plug>(go-debug-continue)
 autocmd FileType go nmap dr   <Plug>(go-debug-print)
 autocmd FileType go nmap dpr   :GoDebugPrint
 autocmd FileType go nmap db   <Plug>(go-debug-breakpoint)
 autocmd FileType go nmap dn  <Plug>(go-debug-next)
 autocmd FileType go nmap dx  <Plug>(go-debug-step)
 " autocmd FileType go nmap <leader>gob :<C-u>call <SID>build_go_files()<CR>
