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


