"" ---------------
" NERDTree
" ---------------

if !exists("*ToggleNERDTreeAndVista")
  function! ToggleNERDTreeAndVista()
    let w:jumpbacktohere = 1

    " Detect which plugins are open
    if exists('t:NERDTreeBufName')
      let nerdtree_open = bufwinnr(t:NERDTreeBufName) != -1
    else
      let nerdtree_open = 0
    endif
    let vista_open = bufwinnr('__vista__') != -1

    " Perform the appropriate action
    if nerdtree_open && vista_open
      NERDTreeClose
      Vista!
    elseif nerdtree_open
      NERDTreeClose
      Vista
    elseif vista_open
      Vista!
      if &filetype == ""
        NERDTree
      else
        NERDTreeFind
      endif
    else
      Vista
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
nnoremap <leader>ss :call ToggleNERDTreeAndVista()<CR>


if !exists("*ShowNERDTree")
  function! ShowNERDTree()
    let w:jumpbacktohere = 1

    " Detect which plugins are open
    let vista_open = bufwinnr('__vista__') != -1

    " Perform the appropriate action
    if vista_open
      Vista!
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

if !exists("*ShowVista")
  function! ShowVista()
    " let w:jumpbacktohere = 1

    NERDTreeClose
    Vista!! focus

    " Jump back to the original window
    " for window in range(1, winnr('$'))
      " execute window . 'wincmd w'
      " if exists('w:jumpbacktohere')
        " unlet w:jumpbacktohere
        " break
      " endif
    " endfor
  endfunction
endif


nnoremap <leader>nf :call ShowNERDTree()<CR>
nnoremap <leader>vf :Vista!! focus<CR>
let g:NERDTreeWinSize = 40
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 2 " Change the NERDTree directory to the root node
let g:NERDTreeMinimalUI = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  \&& b:NERDTreeType == "primary") | q | endif


