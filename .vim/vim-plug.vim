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
  Plug 'dhruvasagar/vim-zoom'
  Plug 'Lokaltog/vim-easymotion'
  Plug '/opt/homebrew/opt/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'roxma/vim-window-resize-easy'

  " Plug 'knubie/vim-kitty-navigator'
  Plug 'christoomey/vim-tmux-navigator'
  " This fork supports true colors!
  Plug 'edkolev/tmuxline.vim'
  Plug 'edkolev/promptline.vim'

  " UI Additions
  Plug 'chrisbra/Colorizer'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'liuchengxu/vista.vim'

  Plug 'mhinz/vim-signify'
  Plug 'mhinz/vim-startify'
  Plug 'tpope/vim-obsession'
  Plug 'dhruvasagar/vim-prosession', {'depends': 'tpope/vim-obsession'}
  Plug 'mbbill/undotree'
  Plug 'jszakmeister/vim-togglecursor'

  " Plug 'luochen1990/rainbow'
  " Plug 'kien/rainbow_parentheses.vim'
  Plug 'p00f/nvim-ts-rainbow'
  " Commands
  Plug 'scrooloose/nerdcommenter'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'junegunn/gv.vim'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-dispatch'
  Plug 'godlygeek/tabular', { 'on': 'Tabularize' }
  Plug 'junegunn/vim-easy-align'

  Plug 'AndrewRadev/sideways.vim', { 'branch': 'main' }
  "Plug 'tpope/vim-abolish'
  "Plug 'scratch.vim'
  Plug 'mattn/emmet-vim'
  Plug 'AndrewRadev/switch.vim'
  "Plug 'tpope/vim-eunuch'
  Plug 'mutewinter/UnconditionalPaste'
  Plug 'nelstrom/vim-visual-star-search'
  j
  " Automatic Helpers
  Plug 'powerman/vim-plugin-AnsiEsc'
  Plug 'MarcWeber/vim-addon-local-vimrc'
  Plug 'jiangmiao/auto-pairs'
  " Plug 'w0rp/ale'

  Plug 'Valloric/MatchTagAlways'
  Plug 'FooSoft/vim-argwrap', { 'on': 'ArgWrap' }

  Plug 'SirVer/ultisnips'

  Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
  Plug 'antoinemadec/coc-fzf'

  Plug 'honza/vim-snippets'
  Plug 'airblade/vim-rooter'

  Plug 'puremourning/vimspector', { 'do': ':VimspectorInstall' }
  Plug 'CPWeaver/nvim-goc.lua'
"Language Additions
   " LaTeX
  Plug 'lervag/vimtex', {'for': 'tex'}
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
  Plug 'mxw/vim-jsx', { 'for': 'javascript' }
  Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
  Plug 'elzr/vim-json', { 'for': 'json' }
  Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'coffee'] }

  Plug 'leafgarland/typescript-vim', { 'for': ['typescript']}
  Plug 'peitalin/vim-jsx-typescript', { 'for': ['typescript']}
   "HTML
  Plug 'nono/vim-handlebars', { 'for' : ['html', 'hbs'] }
  Plug 'othree/html5.vim', { 'for' : ['html', 'hbs'] }
  Plug 'vim-scripts/indenthtml.vim', { 'for' : ['html', 'hbs'] }
   "Other Languages
  Plug 'hail2u/vim-css3-syntax', { 'for' : ['css', 'less', 'sass'] }
  Plug 'groenewege/vim-less', { 'for' : 'less' }
  Plug 'tpope/vim-cucumber', { 'for' : ['feature', 'story'] }
  Plug 'tfnico/vim-gradle', { 'for': 'groovy'}
  Plug 'tmux-plugins/vim-tmux', { 'for': 'tmux' }
  Plug 'tmux-plugins/vim-tmux-focus-events'
  Plug 'hashivim/vim-terraform'
  Plug 'ernstvanderlinden/vim-coldfusion', { 'for': 'eoz' }
  Plug 'vim-test/vim-test'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'iamcco/markdown-preview.vim'
  " MatchIt
  Plug 'vim-scripts/matchit.zip'
  "Libraries
  Plug 'tpope/vim-repeat'
  Plug 'vim-scripts/groovy.vim'
  "Plug 'mattn/webapi-vim'
  Plug 'nanotech/jellybeans.vim'
  Plug 'Pychimp/vim-luna'
  Plug 'w0ng/vim-hybrid'
  Plug 'ajh17/Spacegray.vim', { 'branch': 'main' }
  Plug 'altercation/vim-colors-solarized'
  "Plug 'chriskempson/base16-vim'
  "This branch is regenerated with more color schames
  Plug 'snooc/base16-vim'
  Plug 'matze/vim-move'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'ryanoasis/vim-devicons'

  Plug 'whiteinge/diffconflicts'
  Plug 'APZelos/blamer.nvim'
call plug#end()

