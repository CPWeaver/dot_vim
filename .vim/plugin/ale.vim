" " \ 'go': ['gobuild', 'golangci-lint', 'golint']
" let g:ale_linters = {
      " \ 'javascript': ['eslint', 'flow'],
      " \ 'go': ['gobuild', 'golangci-lint'],
      " \}

" let g:ale_go_golangci_lint_options = ''
" let g:ale_go_golangci_lint_package = 1

" " let g:ale_fixers = {
      " " \ 'javascript': ['eslint', 'prettier_eslint'],
      " " \ 'javascript.jsx': ['eslint', 'prettier_eslint'],
      " " \ 'go': ['gofmt', 'goimports'],
      " " \ }

" let g:ale_sign_priority = 5
" let g:ale_sign_error = '✖'
" let g:ale_sign_warning = '⚠'

" " let g:ale_echo_msg_format = '%severity%: %linter%: %s'

" " " let g:ale_lint_on_enter = 0
" " let COC do this stuff
" let g:ale_disable_lsp = 1

" let g:ale_lint_on_text_changed = 'always'
" let g:ale_lint_on_insert_leave = 1
" " let g:ale_lint_on_enter
" " let g:ale_lint_on_save
" " let g:ale_lint_on_filetype_changed

" " error list
" let g:ale_open_list = 0
" " let g:ale_list_window_size = 5

" let g:ale_set_highlights = 1
" highlight link ALEVirtualTextError SpellBad
" highlight link ALEVirtualTextStyleError SpellBad

" highlight link ALEVirtualTextWarning SpellCap
" highlight link ALEVirtualTextStyleWarning SpellCap

" " show errors to the right as typing
" let g:ale_virtualtext_cursor = 1

" let g:airline#extensions#ale#enabled = 1

" nmap <silent> ]a <Plug>(ale_next_wrap)
" nmap <silent> [a <Plug>(ale_previous_wrap)
