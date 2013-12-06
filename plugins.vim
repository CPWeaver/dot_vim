"" ----------------------------------------
"" Plugin Configuration
"" ----------------------------------------
"
" -------
" Eclim
" -------
let g:EclimCompletionMethod='omnifunc'
nnoremap <Leader>ef :JavaFormat<CR>
nnoremap <Leader>ei :JavaImport<CR>
nnoremap <Leader>eio :JavaImportOrganize<CR>
nnoremap <Leader>eg :JavaSearchContext<CR>
nnoremap <Leader>et :JavaHierarchy<CR>
nnoremap <Leader>er :JavaRename
nnoremap <Leader>ec :JavaCorrect<CR>
" Disable autocmoplete scratch buffer
set completeopt-=preview
set completeopt+=longest

" ---------------
" Vundle
" ---------------
command! ReloadVundle source ~/.vim/vundle.vim
function BundleReloadAndRun(command)
  :ReloadVundle
  execute a:command
endfunction

nnoremap <Leader>bi :call BundleReloadAndRun("BundleInstall")<CR>
nnoremap <Leader>bu :call BundleReloadAndRun("BundleInstall!")<CR>
nnoremap <Leader>bc :call BundleReloadAndRun("BundleClean")<CR>

"" ---------------
"" space.vim
"" ---------------
"" Disables space mappings in select mode to fix snipMate.
"let g:space_disable_select_mode=1
"
" ---------------
" Syntastic
" ---------------
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
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

"--------
" Tagbar
"--------
nnoremap <Leader>ol :Tagbar<CR>
let g:tagbar_left = 1

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
      NERDTreeToggle
    else
      NERDTreeToggle
      "TagbarOpen
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
    NERDTreeToggle

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

nnoremap <leader>nn :call ShowNERDTree()<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let g:NERDTreeWinSize = 40
let g:NERDTreeShowBookmarks=1
let g:NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
let g:NERDTreeMinimalUI=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  \&& b:NERDTreeType == "primary") | q | endif

" ---------------
" Indent Guides
" ---------------
let g:indent_guides_enable_on_vim_startup = 1

" ---------------
"" Session
"" ---------------
"let g:session_autosave=0
"let g:session_autoload=0
"nnoremap <leader>os :OpenSession<CR>
"
"" ---------------
"" Tabular
"" ---------------
"nnoremap <Leader>t= :Tabularize assignment<CR>
"vnoremap <Leader>t= :Tabularize assignment<CR>
"nnoremap <Leader>t: :Tabularize symbol<CR>
"vnoremap <Leader>t: :Tabularize symbol<CR>
"nnoremap <Leader>t, :Tabularize comma<CR>
"vnoremap <Leader>t, :Tabularize comma<CR>

" ---------------
" Fugitive
" ---------------
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
nnoremap <silent> <leader>wo :ZoomWin<CR>

" ---------------
" ctrlp.vim
" ---------------
" Ensure Ctrl-P isn't bound by default
let g:ctrlp_map = ''

" Ensure max height isn't too large. (for performance)
let g:ctrlp_max_height = 10

" Leader Commands
nnoremap <leader>t :CtrlPRoot<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>u :CtrlPCurFile<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>

" ---------------
" airline
" ---------------
let g:airline#extensions#eclim#enabled = 1
let g:airline_theme = 'jellybeans'
let g:airline_powerline_fonts = 1
let g:airline_detect_modified = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#hunks#enabled = 0
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

"" ------------------------------------
"" Rainbow parens (solarized palette)
"" ------------------------------------
"let g:rbpt_max = 8
"let g:rbpt_colorpairs = [
"    \ ['136',  '#b58900'],
"    \ ['61',   '#6c71c4'],
"    \ ['166',  '#cb4b16'],
"    \ ['33',   '#268bd2'],
"    \ ['160',  '#dc322f'],
"    \ ['37',   '#2aa198'],
"    \ ['125',  '#d33682'],
"    \ ['64',   '#859900'],
"    \ ]

" ---------------
" Ag.vim
" ---------------
nnoremap <silent> <leader>as :AgFromSearch<CR>
nnoremap <leader>ag :Ag<space>
nnoremap <leader>sag :Ag <c-r><c-w>

"" ---------------
"" surround.vim
"" ---------------
"" Use # to get a variable interpolation (inside of a string)}
"" ysiw#   Wrap the token under the cursor in #{}
"" Thanks to http://git.io/_XqKzQ
"let g:surround_35  = "#{\r}"
"
"" ------------
"" sideways.vim
"" ------------
"noremap gs :SidewaysRight<cr>
"noremap gS :SidewaysLeft<cr>
"
"" ---------------
"" switch.vim
"" ---------------
"nnoremap - :Switch<cr>
"
"" ---------------
"" indenthtml
"" ---------------
"" Setup indenthtml to propertly indent html. Without this, formatting doesn't
"" work on html.
"let g:html_indent_inctags = "html,body,head,tbody"
"let g:html_indent_script1 = "inc"
"let g:html_indent_style1 = "inc"
"
" ---------------
" Unconditional Paste
" ---------------
let g:UnconditionalPaste_NoDefaultMappings=1
nnoremap gcP <Plug>UnconditionalPasteCharBefore
nnoremap gcp <Plug>UnconditionalPasteCharAfter

"" ---------------
"" Gist.vim
"" ---------------
"if has('macunix') || has('mac')
"  let g:gist_clip_command = 'pbcopy'
"endif
"let g:gist_post_private=1
"
"" ---------------
"" MatchTagAlways
"" ---------------
"let g:mta_filetypes = {
"    \ 'html' : 1,
"    \ 'xhtml' : 1,
"    \ 'xml' : 1,
"    \ 'handlebars' : 1,
"    \ 'eruby' : 1,
"    \}
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

"" ---------------
"" Ultisnips
"" ---------------
"let g:UltiSnipsExpandTrigger="<leader><Enter>"
"let g:UltiSnipsListSnippets="<leader><tab>"
"
"" ---------------
"" vim-signify
"" ---------------
"let g:signify_mapping_next_hunk = '<leader>gj'
"let g:signify_mapping_prev_hunk = '<leader>gk'
"let g:signify_mapping_toggle_highlight="<nop>"
"let g:signify_mapping_toggle="<nop>"
"" Makes switching buffers in large repos have no delay
"let g:signify_update_on_bufenter = 0
"let g:signify_sign_overwrite = 0
"
"" ---------------
"" vim-abolish
"" ---------------
"nnoremap <leader>su :Subvert/
"nnoremap <leader>ss :%Subvert/
"
"" ---------------
"" vim-startify
"" ---------------
"let g:startify_list_order = ['files', 'dir', 'bookmarks', 'sessions']
"let g:startify_files_number = 5
"let g:startify_session_dir = '~/.vim/sessions'
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
"let g:colorv_preview_ftype = 'css,html,javascript,scss,stylus'
