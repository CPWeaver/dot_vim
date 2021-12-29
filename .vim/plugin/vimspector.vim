let g:vimspector_enable_mappings = 'HUMAN'

let g:vimspector_install_gadgets = ['delve', 'vscode-node-debug2']
let g:vimspector_sidebar_width = 100

let g:vimspector_base_dir=expand( '$HOME/.vim/vimspector-config' )

noremap <F2> :VimspectorReset<CR>

" mnemonic 'di' = 'debug inspect'

" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval
