" nmap <silent> <leader>t :TestNearest<CR>
" nmap <silent> <leader>T :TestFile<CR>
 " nmap <silent> <leader>ta :TestSuite<CR>
" nmap <silent> <leader>l :TestLast<CR>
" nmap <silent> <leader>g :TestVisit<CR>

" \ 'test':      ['\v^\s*func ((Test|Example).*)\(', '\v^\s*t.Run\("(.*)"',],

  " \ 'test':      ['\v^\s*t.Run\("(.*)"',],
let test#go#gotest#options = '-count=1 -v'
let test#go#patterns = {
  \ 'test':      ['\v^\s*t.Run\("(.*)"',],
  \ 'namespace': [],
\}
