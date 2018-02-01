" ---------------
" Syntastic
" ---------------
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['scss'] }

" Hat tip http://git.io/SPIBfg
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_full_redraws = 1

" Platform-specific config files
if has('win32') || has('win64')
  let g:syntastic_jsl_conf=$HOME.'/.vim/config/windows/syntastic/jsl.conf'
  let g:syntastic_disabled_filetypes=['sh'] " Disable .sh on Windows
else
  let g:syntastic_javascript_jsl_conf=$HOME.'/.vim/config/unix/syntastic/jsl.conf'
endif

let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exec= 'eslint_d'
let g:syntastic_go_checkers = ['go', 'gofmt', 'golint']

"let g:syntastic_java_checkers = ['javac', 'checkstyle']
"let g:syntastic_java_checkstyle_classpath = '/usr/share/java/checkstyle.jar'
"let g:syntastic_java_checkstyle_conf = '~/dev/chatws/config/checkstyle/checkstyle.xml'

let g:syntastic_html_checkers=['']

