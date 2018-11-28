let g:ale_linters = {
      \ 'javascript': ['eslint', 'flow']
      \}

let g:ale_javascript_eslint_executable = 'eslint_d'

let g:ale_fixers = {
      \ 'javascript': ['eslint', 'prettier_eslint'],
      \ 'javascript.jsx': ['eslint', 'prettier_eslint'],
      \ }

noremap <leader>f :ALEFix<CR>
nnoremap <leader>n :ALENext<CR>
nnoremap <leader>p :ALEPrevious<CR>

let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'

let g:ale_echo_msg_format = '%severity%: %linter%: %s'

let g:ale_lint_on_enter = 0

" error list
let g:ale_open_list = 'on_save'
let g:ale_list_window_size = 5

let g:ale_set_highlights = 1
highlight link ALEVirtualTextError SpellBad
highlight link ALEVirtualTextStyleError SpellBad

highlight link ALEVirtualTextWarning SpellCap
highlight link ALEVirtualTextStyleWarning SpellCap

" show errors to the right as typing
let g:ale_virtualtext_cursor = 1

let g:airline#extensions#ale#enabled = 1
