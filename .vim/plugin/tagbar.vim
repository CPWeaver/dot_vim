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

let g:tagbar_type_javascript = {
    \ 'ctagstype' : 'javascript',
    \ 'kinds'     : [
        \ 'C:classes',
        \ 'M:methods',
        \ 'F:functions',
        \ 'V:variables',
        \ 'v:variables',
        \ 'A:arrays',
        \ 'G:generators',
        \ 'O:objects',
        \ 'P:properties',
        \ 'f:fields',
        \ 'T:tags',
        \ 'E:exports',
        \ 'I:imports',
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

let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

