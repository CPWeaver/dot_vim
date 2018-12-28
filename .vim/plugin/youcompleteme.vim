" ---------------
" YouCompleteMe
" ---------------
let g:ycm_complete_in_comments_and_strings=1
let g:ycm_collect_identifiers_from_comments_and_strings=1
" This runs me out of RAM
"let g:ycm_collect_identifiers_from_tags_files = 1

nnoremap  :YcmCompleter GoTo<CR>

" let g:ycm_gocode_binary_path = "/Users/cweaver/dev/invision/go/bin/gocode"
" let g:ycm_godef_binary_path = "/Users/cweaver/dev/invision/go/bin/godef"

" let ALE handle diagnostics
let g:ycm_show_diagnostics_ui = 0

let g:ycm_always_populate_location_list = 1

if !exists("*HideYCMDiagnostics")
  function! HideYCMDiagnostics()
    let g:ycm_filter_diagnostics = {
      \  "javascript": {
      \   "regex": [".*"],
      \  }
      \}

    YcmRestartServer
  endfunction
endif

nnoremap <leader>hd :call HideYCMDiagnostics()<CR>
