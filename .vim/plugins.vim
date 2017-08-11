" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" ---------------
" Vundle
" ---------------
command! ReloadVimPlug source ~/.vim/vim-plug.vim
if !exists("*PluginReloadAndRun")
function PluginReloadAndRun(command)
    :ReloadVimPlug
    execute a:command
  endfunction
endif


nnoremap <Leader>pi :call PluginReloadAndRun("PlugInstall")<CR>
nnoremap <Leader>pu :call PluginReloadAndRun("PlugUpdate!")<CR>
nnoremap <Leader>pc :call PluginReloadAndRun("PlugClean")<CR>
nnoremap <Leader>ps :call PluginReloadAndRun("PlugStatus")<CR>

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

"-----------------
" EasyMotion
"-----------------
let g:EasyMotion_smartcase = 1
let g:EasyMotion_enter_jump_first = 1
map <leader><leader>/ <Plug>(easymotion-sn)
omap <leader><leader>/ <Plug>(easymotion-tn)
map <leader><leader>n <Plug>(easymotion-next)
map <leader><leader>N <Plug>(easymotion-prev)
nmap s <Plug>(easymotion-s)


"" ---------------
"" space.vim
"" ---------------
"" Disables space mappings in select mode to fix snipMate.
"let g:space_disable_select_mode=1

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

let g:syntastic_javascript_checkers=['jshint', 'jscs', 'eslint']

"let g:syntastic_java_checkers = ['javac', 'checkstyle']
"let g:syntastic_java_checkstyle_classpath = '/usr/share/java/checkstyle.jar'
"let g:syntastic_java_checkstyle_conf = '~/dev/chatws/config/checkstyle/checkstyle.xml'

let g:syntastic_html_checkers=['']

"--------------------
" vim-tags
"--------------------
"let g:vim_tags_project_tags_command = "find `pwd` -maxdepth 4 -type d -wholename '*src' | xargs ctags -R {OPTIONS} 2>/dev/null"


"--------
" Tagbar
"--------
nnoremap <Leader>ol :Tagbar<CR>
"nnoremap <leader>ta :TagbarOpenAutoClose<CR>
let g:tagbar_left = 1
"let g:tagbar_compact = 1
"let g:tagbar_width = 60

let g:tagbar_type_coffee = {
    \ 'ctagstype' : 'coffee',
    \ 'kinds'     : [
        \ 'c:classes',
        \ 'm:methods',
        \ 'f:functions',
        \ 'v:variables',
        \ 'f:fields',
    \ ]
\ }

let g:tagbar_type_groovy = {
    \ 'ctagstype' : 'groovy',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'c:class',
        \ 'i:interface',
        \ 'f:function',
        \ 'v:variables',
    \ ]
\ }

let g:tagbar_type_cucumber = {
    \ 'ctagstype': 'cucumber',
    \ 'kinds': [
        \'d:definition'
      \]
    \}

let g:tagbar_type_less = {
    \ 'ctagstype' : 'less',
    \ 'kinds'     : [
        \ 'c:class',
        \ 'i:id',
        \ 'm:media',
        \ 't:tag',
        \ 'v:variables',
    \ ]
\ }

"" ---------------
" NERDTree
" ---------------

if !exists("*ToggleNERDTreeAndTagbar")
  function! ToggleNERDTreeAndTagbar()
    let w:jumpbacktohere = 1

    " Detect which plugins are open
    if exists('t:NERDTreeBufName')
      let nerdtree_open = bufwinnr(t:NERDTreeBufName) != -1
    else
      let nerdtree_open = 0
    endif
    let tagbar_open = bufwinnr('__Tagbar__') != -1

    " Perform the appropriate action
    if nerdtree_open && tagbar_open
      NERDTreeClose
      TagbarClose
    elseif nerdtree_open
      NERDTreeClose
      TagbarOpen
    elseif tagbar_open
      TagbarClose
      if &filetype == ""
        NERDTree
      else
        NERDTreeFind
      endif
    else
      TagbarOpen
    endif

    " Jump back to the original window
    for window in range(1, winnr('$'))
      execute window . 'wincmd w'
      if exists('w:jumpbacktohere')
        unlet w:jumpbacktohere
        break
      endif
    endfor
  endfunction
endif
nnoremap <leader>ss :call ToggleNERDTreeAndTagbar()<CR>


if !exists("*ShowNERDTree")
  function! ShowNERDTree()
    let w:jumpbacktohere = 1

    " Detect which plugins are open
    let tagbar_open = bufwinnr('__Tagbar__') != -1

    " Perform the appropriate action
    if tagbar_open
      TagbarClose
    endif
    if &filetype == ""
      NERDTree
    else
      NERDTreeFind
    endif

    " Jump back to the original window
    for window in range(1, winnr('$'))
      execute window . 'wincmd w'
      if exists('w:jumpbacktohere')
        unlet w:jumpbacktohere
        break
      endif
    endfor
  endfunction
endif

nnoremap <leader>nf :call ShowNERDTree()<CR>
let g:NERDTreeWinSize = 40
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 2 " Change the NERDTree directory to the root node
let g:NERDTreeMinimalUI = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  \&& b:NERDTreeType == "primary") | q | endif

" ---------------
" Indent Guides
" ---------------
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
" have to do this for hybrid
"let g:indent_guides_auto_colors = 0
"hi IndentGuidesOdd  ctermbg=235
"hi IndentGuidesEven ctermbg=236



" ---------------
"" Session
"" ---------------
"let g:session_autosave=0
"let g:session_autoload=0
"nnoremap <leader>os :OpenSession<CR>
"
" ---------------
" Tabular
" ---------------
nnoremap <Leader>t& :Tabularize /&<CR>
vnoremap <Leader>t& :Tabularize /&<CR>
nnoremap <Leader>t= :Tabularize /=<CR>
vnoremap <Leader>t= :Tabularize /=<CR>
nnoremap <Leader>t: :Tabularize /:<CR>
vnoremap <Leader>t: :Tabularize /:<CR>
nnoremap <Leader>t:: :Tabularize /:\zs<CR>
vnoremap <Leader>t:: :Tabularize /:\zs<CR>
nnoremap <Leader>t, :Tabularize /,<CR>
vnoremap <Leader>t, :Tabularize /,<CR>
nnoremap <Leader>t,, :Tabularize /,\zs<CR>
vnoremap <Leader>t,, :Tabularize /,\zs<CR>
nnoremap <Leader>t<Bar> :Tabularize /<Bar><CR>
vnoremap <Leader>t<Bar> :Tabularize /<Bar><CR>

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
" Start git command
nnoremap <leader>gi :Git<space>
" Undo the last commit
command! Gcundo :Git reset HEAD~1

" ---------------
" Zoomwin
" ---------------
" Zoom Window to Full Size
"nnoremap <silent> <leader>wo :ZoomWin<CR>

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

" ---------------
" ctrlp.vim
" ---------------
" Ensure Ctrl-P isn't bound by default
let g:ctrlp_map = ''
" Default to filename mode
let g:ctrlp_by_filename = 1
" Ensure max height isn't too large. (for performance)
let g:ctrlp_max_height = 10

"let g:ctrlp_show_hidden = 1
"" Fix new windows opening in split from startify
"let g:ctrlp_reuse_window = 'startify'
"let g:ctrlp_mruf_max = 350
"let g:ctrlp_mruf_default_order = 0


" Leader Commands
nnoremap <leader>t :CtrlPRoot<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>u :CtrlPCurFile<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>

" Use The Silver Searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" ---------------
" airline
" ---------------
"let g:airline_solarized_bg = 'dark'
let g:airline_theme = 'hybrid'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_detect_modified = 1
let g:airline#extensions#eclim#enabled = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_mode_map = {
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'v'  : 'V',
      \ 'V'  : 'VL',
      \ 'c'  : 'CMD',
      \ '' : 'VB',
      \ }

" ---------------
" jellybeans.vim colorscheme tweaks
" ---------------
" Make cssAttrs (center, block, etc.) the same color as units
hi! link cssAttr Constant
"let g:jellybeans_use_lowcolor_black = 0

''
" ------------------------------------
" Rainbow parens (solarized palette)
" ------------------------------------
autocmd FileType javascript syntax clear jsFuncBlock
let g:rainbow_active = 1
"let g:rbpt_colorpairs = [
    "\ ['136',  '#b58900'],
    "\ ['61',   '#6c71c4'],
    "\ ['166',  '#cb4b16'],
    "\ ['33',   '#268bd2'],
    "\ ['160',  '#dc322f'],
    "\ ['37',   '#2aa198'],
    "\ ['125',  '#d33682'],
    "\ ['64',   '#859900'],
    "\ ]

" ---------------
" Ag.vim
" ---------------
nnoremap <silent> <leader>as :AgFromSearch<CR>
nnoremap <leader>ag :Ag<space>
vnoremap <leader>ag "xy :Ag "<c-r>x"
nnoremap <leader>sag :Ag <c-r><c-w>
let g:ag_highlight=1
let g:ag_prg="ag --column --smart-case"

"" ---------------
"" surround.vim
"" ---------------
"" Use # to get a variable interpolation (inside of a string)}
"" ysiw#   Wrap the token under the cursor in #{}
"" Thanks to http://git.io/_XqKzQ
"let g:surround_35  = "#{\r}"
"
" ------------
" sideways.vim
" ------------
noremap gs :SidewaysRight<cr>
noremap gS :SidewaysLeft<cr>

" ------------
" dbext.vim
" ------------
let g:dbext_default_profile_docbrown='type=PGSQL:user=tomcat:host=localhost:dbname=docbrown'
let g:dbext_default_profile = 'docbrown'

"" ---------------
"" switch.vim
"" ---------------
nnoremap - :Switch<cr>
autocmd FileType coffee let g:switch_custom_definitions =
    \ [
    \   [' ->', ' =>', ' (done) ->', ' (done) =>'],
    \ ]
autocmd BufNewFile,BufRead *[Ss]pec.coffee let g:switch_custom_definitions =
    \ [
    \   {
    \     '^\(\s\+\)\?describe \(''[^'']\+''\)':  '\1xdescribe \2',
    \     '^\(\s\+\)\?xdescribe \(''[^'']\+''\)':  '\1describe.only \2',
    \     '^\(\s\+\)\?describe.only \(''[^'']\+''\)':  '\1describe \2',
    \   },
    \   {
    \     '^\(\s\+\)xit \(''[^'']\+''\)':  '\1it.only \2',
    \     '^\(\s\+\)it.only \(''[^'']\+''\)':  '\1it \2',
    \     '^\(\s\+\)it \(''[^'']\+''\)':  '\1xit \2',
    \   },
    \   [' ->', ' =>', ' (done) ->', ' (done) =>'],
    \ ]
autocmd BufNewFile,BufRead *[Ss]pec.js let g:switch_custom_definitions =
    \ [
    \   {
    \     '^\(\s\+\)\?describe\(([^)]\+)\)':  '\1describe.only\2',
    \     '^\(\s\+\)\?describe.only\(([^)]\+)\)':  '\1describe\2',
    \   },
    \   {
    \     '^\(\s\+\)it\(([^)]\+)\)':  '\1it.only\2',
    \     '^\(\s\+\)it.only\(([^)]\+)\)':  '\1it\2',
    \   }
    \ ]
" ---------------
" indenthtml
" ---------------
" Setup indenthtml to propertly indent html. Without this, formatting doesn't
" work on html.
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
"
" ---------------
" Unconditional Paste
" ---------------
let g:UnconditionalPaste_NoDefaultMappings = 1
nnoremap gcP <Plug>UnconditionalPasteCharBefore
nnoremap gcp <Plug>UnconditionalPasteCharAfter

"" ---------------
"" Gist.vim
"" ---------------
"if has('macunix') || has('mac')
"  let g:gist_clip_command = 'pbcopy'
"endif
"let g:gist_post_private=1

" ---------------
" MatchTagAlways
" ---------------
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'handlebars' : 1,
    \ 'eruby' : 1,
    \}
"
"" ----------
"" SuperTab
"" ----------
"let g:SuperTabClosePreviewOnPopupClose = 1

" ---------------
" YouCompleteMe
" ---------------
let g:ycm_complete_in_comments_and_strings=1
let g:ycm_collect_identifiers_from_comments_and_strings=1
" This runs me out of RAM
"let g:ycm_collect_identifiers_from_tags_files = 1

"-----------------
" DelimitMate
"-----------------
let g:delimitMate_expand_cr=1


" ---------------
" Ultisnips
" ---------------
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsListSnippets="<leader><tab>"
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"

" ---------------
" vim-signify
" ---------------
let g:signify_mapping_next_hunk = '<leader>gj'
let g:signify_mapping_prev_hunk = '<leader>gk'
let g:signify_mapping_toggle_highlight="<nop>"
let g:signify_mapping_toggle="<nop>"
" Makes switching buffers in large repos have no delay
let g:signify_update_on_bufenter = 0
let g:signify_sign_overwrite = 0

"" ---------------
"" vim-startify
"" ---------------
"let g:startify_list_order = ['files', 'dir', 'bookmarks', 'sessions']
"let g:startify_files_number = 5
"let g:startify_session_dir = '~/.vim/sessions'
"
"" ---------------
"" vim-abolish
"" ---------------
"nnoremap <leader>su :Subvert/
"nnoremap <leader>ss :%Subvert/
"
"
"" ---------------
"" vim-togglecursor
"" ---------------
"let g:togglecursor_leave='line'
"
"" ---------------
"" rails.vim
"" ---------------
"command! Remigrate :Rake db:drop | Rake db:create | Rake db:migrate | Rake test:prepare
"
"" Add custom commands for Rails.vim
"" Thanks to http://git.io/_cBVeA and http://git.io/xIKnCw
"let g:rails_projections = {
"      \ 'app/models/*.rb': {'keywords': 'validates_conditional'},
"      \ 'db/seeds/*.rb': {'command': 'seeds'},
"      \ 'db/seeds.rb': {'command': 'seeds'},
"      \ 'spec/factories.rb': {'command': 'factory'},
"      \ 'spec/factories/*_factory.rb': {
"      \   'command': 'factory',
"      \   'affinity': 'model',
"      \   'alternate': 'app/models/%s.rb',
"      \   'related': 'db/schema.rb#%p',
"      \   'test': 'spec/models/%s_spec.rb',
"      \   'template': "FactoryGirl.define do\n  factory :%s do\n  end\nend",
"      \   'keywords': 'factory sequence'
"      \ },
"      \ 'spec/factories/*.rb': {
"      \   'command': 'factory',
"      \   'affinity': 'collection',
"      \   'alternate': 'app/models/%o.rb',
"      \   'related': 'db/schema.rb#%s',
"      \   'test': 'spec/models/%o_spec.rb',
"      \   'template': "FactoryGirl.define do\n  factory :%o do\n  end\nend",
"      \   'keywords': 'factory sequence'
"      \ },
"      \ 'spec/fabricators/*_fabricator.rb': {
"      \   'command': 'fabricator',
"      \   'affinity': 'model',
"      \   'alternate': 'app/models/%s.rb',
"      \   'related': 'db/schema.rb#%p',
"      \   'test': 'spec/models/%s_spec.rb',
"      \   'template': "Fabricator(:%s) do\nend",
"      \   'keywords': 'sequence initialize_with on_init transient after_build before_validation after_validation before_save before_create after_create after_save'
"      \ },
"      \ 'spec/support/*.rb': {'command': 'support'},
"      \ 'features/*.feature': {'command': 'feature'},
"      \ 'features/step_definitions/*_steps.rb': {'command': 'steps'},
"      \ 'features/support/*.rb': {'command': 'support'}}
"
"" ------
"" ColorV
"" ------
let g:colorv_preview_ftype = 'css,html,scss,stylus' "javascript
"
"-------------
" CoffeeScript
"-------------
nnoremap <silent> <leader>vc :CoffeeWatch vert<CR>
" ----------
" UndoTree
" ----------
nnoremap <Leader>ut :UndotreeToggle<CR>

"------------
" prosession
"------------
let g:prosession_on_startup = 0

"------------
" vim-rooter
"------------
" Look for gradle build files
let g:rooter_patterns = ['.git', 'package.json', 'build.gradle', 'pom.xml', '.git/', '_darcs/', '.hg/', '.bzr/', '.svn/']

let g:tmuxline_preset = {
    \ 'a'    : '❐ #S',
    \ 'b'    : '#H',
    \ 'c'    : '#(whoami)',
    \ 'win'  : ['#I', '#W'],
    \ 'cwin' : ['#I', '#W', '#F'],
    \ 'x'    : ['%I:%M %p', '%D'],
    \ 'z'    : "Net:#(~/.tmux/plugins/tmux-online-status/scripts/online_status_icon.sh)Bat:#(~/.tmux/plugins/tmux-battery/scripts/battery_icon.sh)#(~/.tmux/plugins/tmux-battery/scripts/battery_percentage.sh) CPU:#(~/.tmux/plugins/tmux-cpu/scripts/cpu_percentage.sh)"
    \ }

" --------
" vim-move
" --------

let g:move_map_keys = 0

nmap <M-j> <Plug>MoveLineDown
nmap <M-k> <Plug>MoveLineUp
vmap <M-j> <Plug>MoveBlockDown
vmap <M-k> <Plug>MoveBlockUp
" osx mappings, option+j/k with option mapped to ESC+
nmap ∆ <Plug>MoveLineDown
nmap ˚ <Plug>MoveLineUp
vmap ∆ <Plug>MoveBlockDown
vmap ˚ <Plug>MoveBlockUp



" ----------
" vim-argwrap
" ----------
nnoremap <silent> <leader>a :ArgWrap<CR>

"let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {}
"let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['Jenkinsfile'] = ''
"let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['Dockerfile'] = ''


"" ------
"" AnsiEsc
"" ------
nnoremap <Leader>a :AnsiEsc<CR>
