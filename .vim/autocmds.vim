" ----------------------------------------
" Auto Commands
" ----------------------------------------

if has("autocmd")
  augroup MyAutoCommands
    " Clear the auto command group so we don't define it multiple times
    " Idea from http://learnvimscriptthehardway.stevelosh.com/chapters/14.html
    autocmd!
    " No formatting on o key newlines
    autocmd BufNewFile,BufEnter * set formatoptions-=o

    " No more complaining about untitled documents
    autocmd FocusLost silent! :wa

    " Auto open a quick fix window for grep
    autocmd QuickFixCmdPost *grep* cwindow

    "" No more complaining about untitled documents
    "autocmd FocusLost silent! :wa

    " When editing a file, always jump to the last cursor position.
    " This must be after the uncompress commands.
    autocmd BufReadPost *
          \ if line("'\"") > 1 && line ("'\"") <= line("$") |
          \   exe "normal! g`\"" |
          \ endif

    " Fix trailing whitespace in my most used programming langauges
    autocmd BufWritePre *.py,*.coffee,*.css,*.less,*.js,
	  \*.rb,*.erb,*.groovy,*.java,*.php,*.ftl,*.md,*.vim,Cakefile,*.hbs
	  \ silent! :StripTrailingWhiteSpace

    " Help mode bindings
    " <enter> to follow tag, <bs> to go back, and q to quit.
    " From http://ctoomey.com/posts/an-incremental-approach-to-vim/
    autocmd filetype help nnoremap <buffer><cr> <c-]>
    autocmd filetype help nnoremap <buffer><bs> <c-T>
    autocmd filetype help nnoremap <buffer>q :q<CR>


    " Quickly close other window types
    autocmd filetype qf nnoremap <buffer>q :q<CR>

    " Enable autocomplete based on syntax
    autocmd FileType css,coffee,javascript,html setlocal omnifunc=syntaxcomplete#Complete


    " This breaks Rainbow Parentheses for js
    autocmd FileType javascript syntax clear jsFuncBlock

    " Fix accidental indentation in html files
    " from http://morearty.com/blog/2013/01/22/fixing-vims-indenting-of-html-files.html
    autocmd FileType html setlocal indentkeys-=*<Return>


    " Leave the return key alone when in command line windows, since it's used
    " to run commands there.
    autocmd! CmdwinEnter * :unmap <cr>
    autocmd! CmdwinLeave * :call MapCR()
  augroup END

  augroup File-Type
    autocmd!
    autocmd FileType qf setlocal wrap
  augroup END

  " Use java.groovy file type for groovy
  augroup filetypedetect
    autocmd BufNew,BufNewFile,BufRead *.tmux set filetype=tmux
    autocmd BufNew,BufNewFile,BufRead .tern-project,.jshintrc,.bowerrc set filetype=json
    autocmd BufNew,BufNewFile,BufRead *.groovy set filetype=java.groovy
    autocmd BufNew,BufNewFile,BufRead Jenkinsfile set filetype=groovy
    autocmd BufNew,BufNewFile,BufRead *.cfm set filetype=eoz
    autocmd BufNew,BufNewFile,BufRead *.cfc set filetype=eoz
  augroup END
endif
