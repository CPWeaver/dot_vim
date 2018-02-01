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

