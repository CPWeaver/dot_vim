""---------------
"" unite.vim
""---------------
let g:unite_enable_start_insert = 1
"let g:unite_winheight = 10
let g:unite_enable_short_source_names = 1
let g:unite_source_file_rec_max_cache_files=10000
let g:unite_source_rec_async_command= 'ag --nocolor --nogroup --hidden -g ""'
"call unite#filters#matcher_default#use(['matcher_glob'])
call unite#custom#source('file_rec', 'ignore_pattern',  '.*\(build/\|bin/\).*')
      "\'\~$\|\.\%(bak\|sw[po]\)$\|'.
      "\'\%(^\|/\)\.\%(hg\|git\|bzr\|svn\)\%($\|/\)')
""}}}

"set wildignore+=*/test-output/*,*/bin/*,*/target/*,*/build/*,*/node_modules/*,*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  "\.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc
"nnoremap <leader>t :<C-u>Unite file_rec/async:!<CR>


