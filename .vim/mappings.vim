" ----------------------------------------
" Mappings
" ----------------------------------------

" Set leader to ,
" Note: This line MUST come before any <leader> mappings
let mapleader=","
let maplocalleader = "\\"

" ---------------
" Regular Mappings
" ---------------

" Use ; for : in normal and visual mode, less keystrokes
nnoremap ; :
vnoremap ; :

" Yank entire buffer with gy
nnoremap gy :%y+<cr>

" Select entire buffer
nnoremap vy ggVG

" Make Y behave like other capital commands.
" Hat-tip http://vimbits.com/bits/11
nnoremap Y y$

" Just to beginning and end of lines easier. From http://vimbits.com/bits/16
noremap H ^
noremap L $

" Clear search
noremap <silent><Leader>/ :nohls<CR>

" Highlight search word under cursor without jumping to next
nnoremap <leader>h *<C-O>

nnoremap <leader>s :%s/\<<C-r><C-w>\>/

" Create newlines without entering insert mode
nnoremap go O<Esc>j
nnoremap gO o<Esc>k

" ---------------
" Tabs Movement
" ---------------
nnoremap <silent> <leader>ts :tab split<CR>
nnoremap <silent> <leader>tc :tabclose<CR>

" ---------------
" Window Movement
" ---------------
nnoremap <silent> gh :WriteBufferIfNecessary<CR>:wincmd h<CR>
nnoremap <silent> gj :WriteBufferIfNecessary<CR>:wincmd j<CR>
nnoremap <silent> gk :WriteBufferIfNecessary<CR>:wincmd k<CR>
nnoremap <silent> gl :WriteBufferIfNecessary<CR>:wincmd l<CR>

" Toggle spelling mode with ,s
" nnoremap <silent> <leader>s :set spell!<CR>
" Edit vimrc with ,v
nnoremap <silent> <leader>v :e ~/.vim/vimrc<CR>
" Quickly switch to last buffer
nmap <leader>. :e#<CR>


" Redraw
nnoremap <leader>rd :redraw!<CR>

" Window Movement
" Here's a visual guide for moving between window splits.
"   6 Window Splits
"   -------------
"   g1 | gt | g2
"   ---|----|----
"   g3 | gb | g4
"   -------------
nnoremap <silent> gh :wincmd h<CR>
nnoremap <silent> gj :wincmd j<CR>
nnoremap <silent> gk :wincmd k<CR>
nnoremap <silent> gl :wincmd l<CR>
" Upper left window
nnoremap <silent> g1 :wincmd t<CR>
" Upper right window
nnoremap <silent> g2 :wincmd b<Bar>:wincmd k<CR>
" Lower left window
nnoremap <silent> g3 :wincmd t<Bar>:wincmd j<CR>
" Lower right window
nnoremap <silent> g4 :wincmd b<CR>

" Top Middle
"nnoremap <silent> gt :wincmd t<Bar>:wincmd l<CR>
" Bottom Middle
nnoremap <silent> gb :wincmd b<Bar>:wincmd h<CR>

"nnoremap <silent> g1 :WriteBufferIfNecessary<CR>:wincmd t<CR>
"nnoremap <silent> g2 :WriteBufferIfNecessary<CR>:wincmd t<bar>:wincmd l<CR>
"nnoremap <silent> g3 :WriteBufferIfNecessary<CR>:wincmd t<bar>:wincmd l<bar>
      "\:wincmd l<CR>
"nnoremap <silent> g4 :WriteBufferIfNecessary<CR>:wincmd b<CR>

" Previous Window
nnoremap <silent> gp :wincmd p<CR>
" Equal Size Windows
nnoremap <silent> g= :wincmd =<CR>
" Swap Windows
nnoremap <silent> gx :wincmd x<CR>

" ---------------
" Modifer Mappings
" ---------------

" Close the current window
nnoremap <silent> <leader>c :close<CR>

nnoremap <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>

" Make line completion easier.
inoremap <C-l> <C-x><C-l>

" Easier Scrolling (think j/k with left hand)
" All variations are mapped for now until I get used to one
" C/M/D + d (page up)
" C/M/D + f (page down)
nnoremap <C-j> 15gjzz
nnoremap <C-k> 15gkzz
vnoremap <C-j> 15gjzz
vnoremap <C-k> 15gkzz

" ---------------
" Insert Mode Mappings
" ---------------

" Let's make escape better, together.
inoremap jk <Esc>
inoremap JK <Esc>
inoremap Jk <Esc>
inoremap jK <Esc>

tnoremap jk <Esc>
tnoremap JK <Esc>
tnoremap Jk <Esc>
tnoremap jK <Esc>

vnoremap jk <Esc>
vnoremap JK <Esc>
vnoremap Jk <Esc>
vnoremap jK <Esc>


" ---------------
" Leader Mappings
" ---------------

" Change to the directory of the currently open file
"nmap <silent> <leader>cd :cd %:p:h<CR>

" Change the directory only for the current window
nmap <silent> <leader>lcd :lcd %:p:h<CR>

" Search and replace word under cursor
nnoremap <leader>sr :%s/\<<c-r><c-w>\>//<left>

" Smart insert semicolon
noremap <leader>; mqA;<Esc>`q

" Clear search
noremap <silent><leader>/ :nohls<CR>

" Highlight search word under cursor without jumping to next
nnoremap <leader>h *<C-O>

" Quickly switch to last buffer
nnoremap <leader>. :e#<CR>

" Underline the current line with '-'
nnoremap <silent> <leader>ul :t.\|s/./-/\|:nohls<cr>

" Underline the current line with '='
nnoremap <silent> <leader>uul :t.\|s/./=/\|:nohls<cr>

" Surround the commented line with lines.
"
" Example:
"          # Test 123
"          becomes
"          # --------
"          # Test 123
"          # --------
nnoremap <silent> <leader>cul :normal "lyy"lpwv$r-^"lyyk"lP<cr>

" Format the entire file
nnoremap <leader>fef mx=ggG='x

" Wrap the current line
nnoremap <leader>fl Vgq

" Format a json file with Python's built in json.tool.
" from https://github.com/spf13/spf13-vim/blob/3.0/.vimrc#L390
nnoremap <leader>jt <Esc>:%!underscore print<CR><Esc>:set filetype=json<CR>
nnoremap <leader>jts <Esc>:%!underscore print --strict<CR><Esc>:set filetype=json<CR>

" Use shift+arrows to scroll the window
map <S-Down> <C-E>
map <S-Up>   <C-Y>

"--------------------------------------------------
" visual mode search for selected text, forwards or backwards.
" OBE by visual star search plugin
"--------------------------------------------------
"vnoremap <silent> * :<C-U>
  "\let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  "\gvy/<C-R><C-R>=substitute(
  "\escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  "\gV:call setreg('"', old_reg, old_regtype)<CR>
"vnoremap <silent> # :<C-U>
  "\let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  "\gvy?<C-R><C-R>=substitute(
  "\escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  "\gV:call setreg('"', old_reg, old_regtype)<CR>

" Split window vertically or horizontally *and* switch to the new split!
nnoremap <silent> <leader>hs :split<Bar>:wincmd j<CR>
nnoremap <silent> <leader>vs :vsplit<Bar>:wincmd l<CR>

" Close the current window
nnoremap <silent> <leader>sc :close<CR>

" ---------------
" Typo Fixes
" ---------------

" Fixes common typos
command! W w
command! Q q

noremap <F1> <Esc>
inoremap <F1> <Esc>
" Crazy flying pinky
cnoremap w' w<CR>

" Disable the ever-annoying Ex mode shortcut key. Type visual my ass. Instead,
" make Q repeat the last macro instead. *hat tip* http://vimbits.com/bits/263
nnoremap Q @@

" Removes doc lookup mapping because it's easy to fat finger and never useful.
nnoremap K k
vnoremap K k

"-------------------------------------------------------------------------------------
" http://vim.wikia.com/wiki/Identify_the_syntax_highlighting_group_used_at_the_cursor
"-------------------------------------------------------------------------------------
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
