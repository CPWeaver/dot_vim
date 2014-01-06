" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" ---------------
" Plugin Bundles
" ---------------

" Navigation
Bundle 'regedarek/ZoomWin'
" This fork is required due to remapping ; to :
"Bundle 'christoomey/vim-space'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'

Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/unite.vim'

Bundle 'christoomey/vim-tmux-navigator'

Bundle 'majutsushi/tagbar'

" UI Additions
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
"Bundle 'Rykka/colorv.vim'
Bundle 'nanotech/jellybeans.vim'
"Bundle 'mhinz/vim-signify'
"Bundle 'mhinz/vim-startify'
Bundle 'mbbill/undotree'
"Bundle 'jszakmeister/vim-togglecursor'
Bundle 'kien/rainbow_parentheses.vim'
"" Commands
Bundle 'dansomething/vim-eclim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/tabular'
Bundle 'lfilho/cosco.vim'
"Bundle 'milkypostman/vim-togglelist'
"Bundle 'AndrewRadev/sideways.vim'
"Bundle 'tpope/vim-abolish'
"Bundle 'scratch.vim'
"Bundle 'mattn/emmet-vim'
"Bundle 'AndrewRadev/switch.vim'
"Bundle 'tpope/vim-eunuch'
Bundle 'mutewinter/UnconditionalPaste'
"Bundle 'skalnik/vim-vroom'
"Bundle 'HelpClose'
"Bundle 'mattn/gist-vim'
Bundle 'nelstrom/vim-visual-star-search'
"Bundle 'sk1418/Join'
"" Automatic Helpers
Bundle 'vim-scripts/SyntaxComplete'
"Bundle 'MarcWeber/vim-addon-local-vimrc'
"Bundle 'IndexedSearch'
"Bundle 'xolox/vim-misc'
"Bundle 'xolox/vim-session'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'
"Bundle 'ervandew/supertab'
Bundle 'Valloric/MatchTagAlways'
Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'

" Language Additions
"   Clojure
"Bundle 'tpope/vim-fireplace'
"Bundle 'tpope/vim-classpath'
"Bundle 'guns/vim-clojure-static'
"Bundle 'guns/vim-sexp'
""   Ruby
"Bundle 'vim-ruby/vim-ruby'
"Bundle 'tpope/vim-haml'
"Bundle 'tpope/vim-rails'
"Bundle 'tpope/vim-rake'
"   JavaScript
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'elzr/vim-json'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'claco/jasmine.vim'
"   HTML
Bundle 'nono/vim-handlebars'
Bundle 'othree/html5.vim'
Bundle 'indenthtml.vim'
"   Other Languages
Bundle 'hail2u/vim-css3-syntax'
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-cucumber'
Bundle 'dansomething/ftl-vim-syntax'
Bundle 'tfnico/vim-gradle'
Bundle 'andersoncustodio/vim-tmux'
"" MatchIt
Bundle 'matchit.zip'
"Bundle 'kana/vim-textobj-user'
"Bundle 'nelstrom/vim-textobj-rubyblock'
" Libraries
"Bundle 'L9'
"Bundle 'tpope/vim-repeat'
"Bundle 'mattn/webapi-vim'
