" ----------------------------------------
" Vim-plug
" ----------------------------------------
set nocompatible " be iMproved
filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')
" Plugins go here

  " Navigation
  Plug 'regedarek/ZoomWin', {'on': 'ZoomWin' }
  " This fork is required due to remapping ; to :
  "Plug 'christoomey/vim-space'
  Plug 'Lokaltog/vim-easymotion'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'rking/ag.vim', { 'on': 'Ag' }

  Plug 'Shougo/vimproc.vim'
  Plug 'Shougo/unite.vim'

  Plug 'christoomey/vim-tmux-navigator'
  Plug 'edkolev/tmuxline.vim'

  " UI Additions
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
  Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind', 'NERDTree'] }
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'majutsushi/tagbar' | Plug 'szw/vim-tags'
  Plug 'Rykka/colorv.vim'
  Plug 'mhinz/vim-signify'
  Plug 'mhinz/vim-startify'
  Plug 'tpope/vim-obsession'
  Plug 'mbbill/undotree'
  "Plug 'jszakmeister/vim-togglecursor'
  Plug 'luochen1990/rainbow'
  " Commands
  "Plug 'dansomething/vim-eclim'
  Plug 'eclim'
  Plug 'scrooloose/nerdcommenter'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-dispatch'
  Plug 'godlygeek/tabular', { 'on': 'Tabularize' }

  "Plug 'milkypostman/vim-togglelist'
  Plug 'AndrewRadev/sideways.vim'
  "Plug 'tpope/vim-abolish'
  "Plug 'scratch.vim'
  Plug 'mattn/emmet-vim'
  "Plug 'AndrewRadev/switch.vim'
  "Plug 'tpope/vim-eunuch'
  Plug 'mutewinter/UnconditionalPaste'
  "TODO: This guy steps on p by default.
  "Plug 'sickill/vim-pasta'
  "Plug 'skalnik/vim-vroom'
  "Plug 'HelpClose'
  "Plug 'mattn/gist-vim'
  Plug 'nelstrom/vim-visual-star-search'
  "Plug 'sk1418/Join'
  " Automatic Helpers
  Plug 'vim-scripts/SyntaxComplete'
  Plug 'vim-scripts/AnsiEsc.vim'
  Plug 'MarcWeber/vim-addon-local-vimrc'
  "Plug 'IndexedSearch'
  "Plug 'xolox/vim-misc'
  "Plug 'xolox/vim-session'
  Plug 'Raimondi/delimitMate'
  Plug 'scrooloose/syntastic'
  "Plug 'ervandew/supertab'
  Plug 'Valloric/MatchTagAlways'
  Plug 'FooSoft/vim-argwrap', { 'on': 'ArgWrap' }

  function! BuildYCM(info)
    if a:info.status == 'installed' || a:info.force
      !./install.py --clang-completer
    endif
  endfunction

  Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM'), 'commit': 'cb57569' }
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'airblade/vim-rooter'
  "Plug 'vim-scripts/dbext.vim'
  "Language Additions
    "Clojure
  "Plug 'tpope/vim-fireplace'
  "Plug 'tpope/vim-classpath'
  "Plug 'guns/vim-clojure-static'
  "Plug 'guns/vim-sexp'
  "   Ruby
  "Plug 'vim-ruby/vim-ruby'
  "Plug 'tpope/vim-haml'
  "Plug 'tpope/vim-rails'
  "Plug 'tpope/vim-rake'
    "JavaScript
  Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
  Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
  Plug 'elzr/vim-json', { 'for': 'json' }
  Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'coffee'] }
    "HTML
  Plug 'nono/vim-handlebars', { 'for' : ['html', 'hbs'] }
  Plug 'othree/html5.vim', { 'for' : ['html', 'hbs'] }
  Plug 'indenthtml.vim', { 'for' : ['html', 'hbs'] }
    "Other Languages
  Plug 'hail2u/vim-css3-syntax', { 'for' : ['css', 'less', 'sass'] }
  Plug 'groenewege/vim-less', { 'for' : 'less' }
  Plug 'tpope/vim-cucumber', { 'for' : ['feature', 'story'] }
  Plug 'tfnico/vim-gradle', { 'for': 'groovy'}
  Plug 'andersoncustodio/vim-tmux', { 'for': 'tmux' }
  Plug 'tmux-plugins/vim-tmux-focus-events'
  " MatchIt
  Plug 'matchit.zip'
  "Plug 'kana/vim-textobj-user'
  "Plug 'nelstrom/vim-textobj-rubyblock'
  "Libraries
  Plug 'L9'
  Plug 'tpope/vim-repeat'
  Plug 'vim-scripts/groovy.vim'
  "Plug 'mattn/webapi-vim'
  Plug 'nanotech/jellybeans.vim'
  Plug 'Pychimp/vim-luna'
  Plug 'w0ng/vim-hybrid'
  Plug 'ajh17/Spacegray.vim'
  Plug 'altercation/vim-colors-solarized'
  "Plug 'chriskempson/base16-vim'
  "This branch is regenerated with more color schames
  Plug 'snooc/base16-vim'
  Plug 'matze/vim-move'
  Plug 'ChrisHonniball/vim-task'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'ryanoasis/vim-devicons'
call plug#end()

