# The Vim Configuration of Champions

## Installation

1. `git clone http://github.com/dansomething/dot_vim.git ~/.vim`
2. `cd ~/.vim`
3. `./install` to create the .vimrc symbolic link and install plugins.
4. Enjoy enhanced productivity, increased levitation, reduced
   watermelon-related accidents, and startling sex appeal.

### Manual Install
1. `git clone http://github.com/dansomething/dot_vim.git ~/.vim`
2. `cd ~/.vim`
3. Install [Vundle](https://github.com/gmarik/vundle) with `git clone
   http://github.com/gmarik/vundle.git bundle/vundle`
4. `vim +BundleInstall +qall` _installs all of the plugins_

## Screenshot

[![MacVim][ss]][ss]

[ss]: https://github.com/mutewinter/dot_vim/raw/master/screenshots/MacVim.png

## Mappings

* Typing `jk` insert mode is equivalent to `Escape`.
* Pressing `enter` in normal mode saves the current buffer.

And many more. See [`mappings.vim`](mappings.vim) and
[`plugins.vim`](plugins.vim) for more.

## Notes

Be sure to always edit the vimrc using `,v`, which opens the vimrc in the
`.vim` folder. Vim has a nasty habit of overriding symlinks.

## Plugin Installation / Requirements

Here's a list of plugins that require further installation or have
dependencies.

* [Fugitive](https://github.com/tpope/vim-fugitive) Requires Git to be
  installed.
* [syntastic](https://github.com/scrooloose/syntastic) Requires many different
  binaries installed depending on what filetypes you want it to check. See the
  [FAQ](https://github.com/scrooloose/syntastic#faq) for more information.
* [Ag.vim](https://github.com/rking/ag.vim) Requires
  [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) to be
  installed.
* [Source Code for Powerline](http://git.io/H3fYBg) The custom font I'm using
  for vim-airline.
* [CtrlP C Matching Extension](https://github.com/JazzCore/ctrlp-cmatcher)
  requires compilation. See the steps [in its
  readme](https://github.com/JazzCore/ctrlp-cmatcher).
* [underscore-cli](https://github.com/ddopson/underscore-cli) for sweet JSON
  formatting.

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/mutewinter/dot_vim/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

## Plugin List

_Note: Out of date since I don't use rake_

 * [vundle](https://github.com/gmarik/vundle) - Vundle, the plug-in manager for Vim
 * [ZoomWin](https://github.com/vim-scripts/ZoomWin) - Zoom in/out  of windows (toggle between one window and multi-window)
 * [ctrlp.vim](https://github.com/kien/ctrlp.vim) - Fuzzy file, buffer, mru, tag, etc finder.
 * [ctrlp-cmatcher](https://github.com/JazzCore/ctrlp-cmatcher) - CtrlP C matching extension
 * [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) - A Vim plugin for visually displaying indent levels in code
 * [vim-airline](https://github.com/bling/vim-airline) - lean & mean status/tabline for vim that's light as air
 * [nerdtree](https://github.com/scrooloose/nerdtree) - A tree explorer plugin for vim.
 * [colorv.vim](https://github.com/Rykka/colorv.vim) - A powerful color tool.
 * [jellybeans.vim](https://github.com/nanotech/jellybeans.vim) - A colorful, dark color scheme for Vim.
 * [vim-signify](https://github.com/mhinz/vim-signify) - Show a VCS diff using Vim's sign column.
 * [vim-startify](https://github.com/mhinz/vim-startify) - A fancy start screen for Vim.
 * [undotree](https://github.com/mbbill/undotree) - Display your undo history in a graph.
 * [vim-togglecursor](https://github.com/jszakmeister/vim-togglecursor) - Toggle the cursor shape in the terminal for Vim.
 * [tcomment_vim](https://github.com/tomtom/tcomment_vim) - An extensible & universal comment vim-plugin that also handles embedded filetypes
 * [vim-surround](https://github.com/tpope/vim-surround) - surround.vim: quoting/parenthesizing made simple
 * [vim-fugitive](https://github.com/tpope/vim-fugitive) - fugitive.vim: a Git wrapper so awesome, it should be illegal
 * [tabular](https://github.com/godlygeek/tabular) - Vim script for text filtering and alignment
 * [ag.vim](https://github.com/rking/ag.vim) - Vim plugin for the_silver_searcher, 'ag', a replacement for the Perl module / CLI script 'ack'
 * [vim-togglelist](https://github.com/milkypostman/vim-togglelist) - Functions to toggle the [Location List] and the [Quickfix List] windows.
 * [swap-parameters](https://github.com/mutewinter/swap-parameters) - Swap parameters of a function or a comma separated list with a single command.
 * [vim-abolish](https://github.com/tpope/vim-abolish) - abolish.vim: easily search for, substitute, and abbreviate multiple variants of a word
 * [scratch.vim](https://github.com/vim-scripts/scratch.vim) - Plugin to create and use a scratch Vim buffer
 * [emmet-vim](https://github.com/mattn/emmet-vim) - emmet for vim: http://emmet.io/
 * [GIFL](https://github.com/mutewinter/GIFL) - Add "wrap terms in google I'm feeling lucky url" à la Textmate
 * [switch.vim](https://github.com/AndrewRadev/switch.vim) - A simple Vim plugin to switch segments of text with predefined replacements
 * [vim-eunuch](https://github.com/tpope/vim-eunuch) - eunuch.vim: helpers for UNIX
 * [vim-marked](https://github.com/itspriddle/vim-marked) - Open the current Markdown buffer in Marked.app
 * [UnconditionalPaste](https://github.com/mutewinter/UnconditionalPaste) - A clone of UnconditionalPaste from http://www.vim.org/scripts/script.php?script_id=3355 since it's not updated on GitHub yet.
 * [HelpClose](https://github.com/vim-scripts/HelpClose) - Close all help windows
 * [gist-vim](https://github.com/mattn/gist-vim) - vimscript for gist
 * [vim-visual-star-search](https://github.com/nelstrom/vim-visual-star-search) - Start a * or # search from a visual block
 * [Join](https://github.com/sk1418/Join) - a better (hopefully) :Join command in vim
 * [ultisnips](https://github.com/SirVer/ultisnips) - Official Mirror of UltiSnips trunk on LaunchPad. Send pull requests to SirVer/ultisnips!
 * [vim-voogle](https://github.com/g3orge/vim-voogle) - google word under the cursor to a browser because 2013
 * [vimux](https://github.com/benmills/vimux) - vim plugin to interact with tmux
 * [vim-turbux](https://github.com/jgdavey/vim-turbux) - Turbo Ruby testing with tmux
 * [vim-ruby-refactoring](https://github.com/ecomba/vim-ruby-refactoring) - Refactoring tool for Ruby in vim!
 * [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) - Seamless navigation between tmux panes and vim splits
 * [portkey](https://github.com/dsawardekar/portkey) - Navigate files at the speed of Vim.
 * [ember.vim](https://github.com/dsawardekar/ember.vim) - Vim plugin for the Emberjs frontend framework
 * [dash.vim](https://github.com/rizzatti/dash.vim) - Search Dash.app from Vim
 * [vim-anzu](https://github.com/osyo-manga/vim-anzu) - Vim search status.
 * [vim-session](https://github.com/xolox/vim-session) - Extended session management for Vim (:mksession on steroids)
 * [delimitMate](https://github.com/Raimondi/delimitMate) - Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc.
 * [syntastic](https://github.com/scrooloose/syntastic) - Syntax checking hacks for vim
 * [supertab](https://github.com/ervandew/supertab) - Perform all your vim insert mode completions with Tab
 * [MatchTagAlways](https://github.com/Valloric/MatchTagAlways) - A Vim plugin that always highlights the enclosing html/xml tags
 * [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) - A code-completion engine for Vim
 * [vim-autoreadwatch](https://github.com/kballenegger/vim-autoreadwatch) - A forked script for vim auto reloading of buffers when changed on disk.
 * [vim-ruby](https://github.com/vim-ruby/vim-ruby) - Vim/Ruby Configuration Files
 * [vim-haml](https://github.com/tpope/vim-haml) - Vim runtime files for Haml, Sass, and SCSS
 * [vim-handlebars](https://github.com/nono/vim-handlebars) - [deprecated] Vim plugin for Handlebars
 * [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) - A Vim plugin for visually displaying indent levels in code
 * [vim-javascript](https://github.com/pangloss/vim-javascript) - Vastly improved Javascript indentation and syntax support in Vim.
 * [vim-json](https://github.com/elzr/vim-json) - A better JSON for Vim: distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing. Pathogen-friendly.
 * [vim-less](https://github.com/groenewege/vim-less) - vim syntax for LESS (dynamic CSS)
 * [vim-misc](https://github.com/xolox/vim-misc) - Miscellaneous auto-load Vim scripts
 * [vim-rails](https://github.com/tpope/vim-rails) - rails.vim: Ruby on Rails power tools
 * [vim-rake](https://github.com/tpope/vim-rake) - rake.vim: it's like rails.vim without the rails
 * [vim-repeat](https://github.com/tpope/vim-repeat) - repeat.vim: enable repeating supported plugin maps with "."
 * [vim-ruby](https://github.com/vim-ruby/vim-ruby) - Vim/Ruby Configuration Files
 * [vim-session](https://github.com/xolox/vim-session) - Extended session management for Vim (:mksession on steroids)
 * [vim-signify](https://github.com/mhinz/vim-signify) - Show a VCS diff using Vim's sign column.
 * [vim-space](https://github.com/christoomey/vim-space) - space.vim - Smart Space key for Vim
 * [vim-startify](https://github.com/mhinz/vim-startify) - A fancy start screen for Vim.
 * [vim-surround](https://github.com/tpope/vim-surround) - surround.vim: quoting/parenthesizing made simple
 * [vim-textobj-rubyblock](https://github.com/nelstrom/vim-textobj-rubyblock) - A custom text object for selecting ruby blocks.
 * [vim-textobj-user](https://github.com/kana/vim-textobj-user) - Vim plugin: Create your own text objects
 * [vim-tmux](https://github.com/andersoncustodio/vim-tmux) - http://tmux.svn.sourceforge.net/viewvc/tmux/trunk/examples/tmux.vim?view=log
 * [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) - Seamless navigation between tmux panes and vim splits
 * [vim-togglecursor](https://github.com/jszakmeister/vim-togglecursor) - Toggle the cursor shape in the terminal for Vim.
 * [vim-togglelist](https://github.com/milkypostman/vim-togglelist) - Functions to toggle the [Location List] and the [Quickfix List] windows.
 * [vim-visual-star-search](https://github.com/nelstrom/vim-visual-star-search) - Start a * or # search from a visual block
 * [vim-vroom](https://github.com/skalnik/vim-vroom) - A vim plugin for running your Ruby tests
 * [vundle](https://github.com/gmarik/vundle) - Vundle, the plug-in manager for Vim
 * [webapi-vim](https://github.com/mattn/webapi-vim) - vim interface to Web API
 * [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) - A code-completion engine for Vim
 * [ZoomWin](https://github.com/regedarek/ZoomWin) - Zoom in/out  of windows (toggle between one window and multi-window)
 * [vim-misc](https://github.com/xolox/vim-misc) - Miscellaneous auto-load Vim scripts
 * [funcoo.vim](https://github.com/rizzatti/funcoo.vim) - Functional Object Oriented VimL

_That's 81 plugins, holy crap._
