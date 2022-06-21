# The Vim Configuration of Champions

## Installation

1. `bash <(curl -s https://raw.githubusercontent.com/CPWeaver/dot_vim/master/install)`

### Manual Install
1. `git clone http://github.com/CPWeaver/dot_vim.git ~/dot_vim`
2. `ln -s ~/dot_vim/.vim ~/.vim`
2. `ln -s ~/.vim/vimrc ~/.vimrc`
3. `ln -s ~/.vim/gvimrc ~/.gvimrc`

## Screenshot
[![Screenshot][ss]][ss]

[ss]: https://github.com/cpweaver/dot_vim/raw/master/screenshot.png

## Mappings

* Typing `jk` insert mode is equivalent to `Escape`.
* Pressing `enter` in normal mode saves the current buffer.

And many more. See [`mappings.vim`](.vim/mappings.vim) and
[`plugins.vim`](.vim/plugins.vim) for more.

## Plugin Installation / Requirements

AddEdit installed plugins in [`vim-plug.vim`](.vim/vim-plug.vim).

Here's a list of plugins that require further dependencies:

* [Fugitive](https://github.com/tpope/vim-fugitive) Requires Git to be
  installed to be useful.
* [Ag.vim](https://github.com/rking/ag.vim) Requires
  [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) to be
  installed.
* [Patched Input Font](https://input.djr.com/download/) Input Font, patched with
  [nerd fonts](https://github.com/ryanoasis/nerd-fonts).

## Plugin List

| Stars&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | **Plugin** | **Description** |
| :------- | :--------- | :-------------- |
| ![Star count](https://flat.badgen.net/github/stars/neoclide/coc.nvim?label=★&color=black) |[coc.nvim](https://github.com/neoclide/coc.nvim)|Nodejs extension host for vim & neovim, load extensions like VSCode and host language servers. |
| ![Star count](https://flat.badgen.net/github/stars/scrooloose/nerdtree?label=★&color=black) |[nerdtree](https://github.com/scrooloose/nerdtree)|A tree explorer plugin for vim. |
| ![Star count](https://flat.badgen.net/github/stars/vim-airline/vim-airline?label=★&color=black) |[vim-airline](https://github.com/vim-airline/vim-airline)|lean & mean status/tabline for vim that's light as air |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-fugitive?label=★&color=black) |[vim-fugitive](https://github.com/tpope/vim-fugitive)|fugitive.vim: A Git wrapper so awesome, it should be illegal |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-surround?label=★&color=black) |[vim-surround](https://github.com/tpope/vim-surround)|surround.vim: Delete/change/add parentheses/quotes/XML-tags/much more with ease |
| ![Star count](https://flat.badgen.net/github/stars/junegunn/fzf.vim?label=★&color=black) |[fzf.vim](https://github.com/junegunn/fzf.vim)|fzf :heart: vim |
| ![Star count](https://flat.badgen.net/github/stars/SirVer/ultisnips?label=★&color=black) |[ultisnips](https://github.com/SirVer/ultisnips)|UltiSnips - The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips! |
| ![Star count](https://flat.badgen.net/github/stars/Lokaltog/vim-easymotion?label=★&color=black) |[vim-easymotion](https://github.com/Lokaltog/vim-easymotion)|Vim motions on speed! |
| ![Star count](https://flat.badgen.net/github/stars/altercation/vim-colors-solarized?label=★&color=black) |[vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)|precision colorscheme for the vim text editor |
| ![Star count](https://flat.badgen.net/github/stars/mattn/emmet-vim?label=★&color=black) |[emmet-vim](https://github.com/mattn/emmet-vim)|emmet for vim: http://emmet.io/ |
| ![Star count](https://flat.badgen.net/github/stars/ryanoasis/vim-devicons?label=★&color=black) |[vim-devicons](https://github.com/ryanoasis/vim-devicons)|Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more |
| ![Star count](https://flat.badgen.net/github/stars/mhinz/vim-startify?label=★&color=black) |[vim-startify](https://github.com/mhinz/vim-startify)|:link: The fancy start screen for Vim. |
| ![Star count](https://flat.badgen.net/github/stars/scrooloose/nerdcommenter?label=★&color=black) |[nerdcommenter](https://github.com/scrooloose/nerdcommenter)|Vim plugin for intensely nerdy commenting powers |
| ![Star count](https://flat.badgen.net/github/stars/honza/vim-snippets?label=★&color=black) |[vim-snippets](https://github.com/honza/vim-snippets)|vim-snipmate default snippets (Previously snipmate-snippets) |
| ![Star count](https://flat.badgen.net/github/stars/nvim-treesitter/nvim-treesitter?label=★&color=black) |[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)|Nvim Treesitter configurations and abstraction layer |
| ![Star count](https://flat.badgen.net/github/stars/lervag/vimtex?label=★&color=black) |[vimtex](https://github.com/lervag/vimtex)|VimTeX: A modern Vim and neovim filetype plugin for LaTeX files. |
| ![Star count](https://flat.badgen.net/github/stars/christoomey/vim-tmux-navigator?label=★&color=black) |[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)|Seamless navigation between tmux panes and vim splits |
| ![Star count](https://flat.badgen.net/github/stars/pangloss/vim-javascript?label=★&color=black) |[vim-javascript](https://github.com/pangloss/vim-javascript)|Vastly improved Javascript indentation and syntax support in Vim. |
| ![Star count](https://flat.badgen.net/github/stars/junegunn/vim-easy-align?label=★&color=black) |[vim-easy-align](https://github.com/junegunn/vim-easy-align)|:sunflower: A Vim alignment plugin |
| ![Star count](https://flat.badgen.net/github/stars/jiangmiao/auto-pairs?label=★&color=black) |[auto-pairs](https://github.com/jiangmiao/auto-pairs)|Vim plugin, insert or delete brackets, parens, quotes in pair |
| ![Star count](https://flat.badgen.net/github/stars/iamcco/markdown-preview.nvim?label=★&color=black) |[markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)|markdown preview plugin for (neo)vim |
| ![Star count](https://flat.badgen.net/github/stars/puremourning/vimspector?label=★&color=black) |[vimspector](https://github.com/puremourning/vimspector)|vimspector - A multi-language debugging system for Vim |
| ![Star count](https://flat.badgen.net/github/stars/editorconfig/editorconfig-vim?label=★&color=black) |[editorconfig-vim](https://github.com/editorconfig/editorconfig-vim)|EditorConfig plugin for Vim |
| ![Star count](https://flat.badgen.net/github/stars/nathanaelkane/vim-indent-guides?label=★&color=black) |[vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)|A Vim plugin for visually displaying indent levels in code |
| ![Star count](https://flat.badgen.net/github/stars/mhinz/vim-signify?label=★&color=black) |[vim-signify](https://github.com/mhinz/vim-signify)|:heavy_plus_sign: Show a diff using Vim its sign column. |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-dispatch?label=★&color=black) |[vim-dispatch](https://github.com/tpope/vim-dispatch)|dispatch.vim: Asynchronous build and test dispatcher |
| ![Star count](https://flat.badgen.net/github/stars/godlygeek/tabular?label=★&color=black) |[tabular](https://github.com/godlygeek/tabular)|Vim script for text filtering and alignment |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-repeat?label=★&color=black) |[vim-repeat](https://github.com/tpope/vim-repeat)|repeat.vim: enable repeating supported plugin maps with "." |
| ![Star count](https://flat.badgen.net/github/stars/mbbill/undotree?label=★&color=black) |[undotree](https://github.com/mbbill/undotree)|The undo history visualizer for VIM |
| ![Star count](https://flat.badgen.net/github/stars/Xuyuanp/nerdtree-git-plugin?label=★&color=black) |[nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)|A plugin of NERDTree showing git status |
| ![Star count](https://flat.badgen.net/github/stars/leafgarland/typescript-vim?label=★&color=black) |[typescript-vim](https://github.com/leafgarland/typescript-vim)|Typescript syntax files for Vim |
| ![Star count](https://flat.badgen.net/github/stars/kchmck/vim-coffee-script?label=★&color=black) |[vim-coffee-script](https://github.com/kchmck/vim-coffee-script)|CoffeeScript support for vim |
| ![Star count](https://flat.badgen.net/github/stars/nanotech/jellybeans.vim?label=★&color=black) |[jellybeans.vim](https://github.com/nanotech/jellybeans.vim)|A colorful, dark color scheme for Vim. |
| ![Star count](https://flat.badgen.net/github/stars/liuchengxu/vista.vim?label=★&color=black) |[vista.vim](https://github.com/liuchengxu/vista.vim)|:cactus: Viewer & Finder for LSP symbols and tags |
| ![Star count](https://flat.badgen.net/github/stars/mxw/vim-jsx?label=★&color=black) |[vim-jsx](https://github.com/mxw/vim-jsx)|React JSX syntax highlighting and indenting for vim. |
| ![Star count](https://flat.badgen.net/github/stars/edkolev/tmuxline.vim?label=★&color=black) |[tmuxline.vim](https://github.com/edkolev/tmuxline.vim)|Simple tmux statusline generator with support for powerline symbols and statusline / airline / lightline integration |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-obsession?label=★&color=black) |[vim-obsession](https://github.com/tpope/vim-obsession)|obsession.vim: continuously updated session files |
| ![Star count](https://flat.badgen.net/github/stars/w0ng/vim-hybrid?label=★&color=black) |[vim-hybrid](https://github.com/w0ng/vim-hybrid)|A dark color scheme for Vim |
| ![Star count](https://flat.badgen.net/github/stars/elzr/vim-json?label=★&color=black) |[vim-json](https://github.com/elzr/vim-json)|A better JSON for Vim: distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing. Pathogen-friendly. |
| ![Star count](https://flat.badgen.net/github/stars/junegunn/gv.vim?label=★&color=black) |[gv.vim](https://github.com/junegunn/gv.vim)|A git commit browser in Vim |
| ![Star count](https://flat.badgen.net/github/stars/airblade/vim-rooter?label=★&color=black) |[vim-rooter](https://github.com/airblade/vim-rooter)|Changes Vim working directory to project root. |
| ![Star count](https://flat.badgen.net/github/stars/matze/vim-move?label=★&color=black) |[vim-move](https://github.com/matze/vim-move)|Plugin to move lines and selections up and down |
| ![Star count](https://flat.badgen.net/github/stars/nvim-lua/plenary.nvim?label=★&color=black) |[plenary.nvim](https://github.com/nvim-lua/plenary.nvim)|plenary: full; complete; entire; absolute; unqualified. All the lua functions I don't want to write twice. |
| ![Star count](https://flat.badgen.net/github/stars/othree/html5.vim?label=★&color=black) |[html5.vim](https://github.com/othree/html5.vim)|HTML5 omnicomplete and syntax |
| ![Star count](https://flat.badgen.net/github/stars/hashivim/vim-terraform?label=★&color=black) |[vim-terraform](https://github.com/hashivim/vim-terraform)|basic vim/terraform integration |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-rhubarb?label=★&color=black) |[vim-rhubarb](https://github.com/tpope/vim-rhubarb)|rhubarb.vim: GitHub extension for fugitive.vim |
| ![Star count](https://flat.badgen.net/github/stars/othree/javascript-libraries-syntax.vim?label=★&color=black) |[javascript-libraries-syntax.vim](https://github.com/othree/javascript-libraries-syntax.vim)|Syntax for JavaScript libraries |
| ![Star count](https://flat.badgen.net/github/stars/edkolev/promptline.vim?label=★&color=black) |[promptline.vim](https://github.com/edkolev/promptline.vim)|Generate a fast shell prompt with powerline symbols and airline colors |
| ![Star count](https://flat.badgen.net/github/stars/groenewege/vim-less?label=★&color=black) |[vim-less](https://github.com/groenewege/vim-less)|vim syntax for LESS (dynamic CSS) |
| ![Star count](https://flat.badgen.net/github/stars/AndrewRadev/switch.vim?label=★&color=black) |[switch.vim](https://github.com/AndrewRadev/switch.vim)|A simple Vim plugin to switch segments of text with predefined replacements |
| ![Star count](https://flat.badgen.net/github/stars/hail2u/vim-css3-syntax?label=★&color=black) |[vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax)|CSS3 syntax (and syntax defined in some foreign specifications) support for Vim's built-in syntax/css.vim |
| ![Star count](https://flat.badgen.net/github/stars/p00f/nvim-ts-rainbow?label=★&color=black) |[nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)|Rainbow parentheses for neovim using tree-sitter. https://sr.ht/~p00f/nvim-ts-rainbow preferred |
| ![Star count](https://flat.badgen.net/github/stars/APZelos/blamer.nvim?label=★&color=black) |[blamer.nvim](https://github.com/APZelos/blamer.nvim)|A git blame plugin for neovim inspired by VS Code's GitLens plugin |
| ![Star count](https://flat.badgen.net/github/stars/Valloric/MatchTagAlways?label=★&color=black) |[MatchTagAlways](https://github.com/Valloric/MatchTagAlways)|A Vim plugin that always highlights the enclosing html/xml tags |
| ![Star count](https://flat.badgen.net/github/stars/chrisbra/Colorizer?label=★&color=black) |[Colorizer](https://github.com/chrisbra/Colorizer)|color hex codes and color names |
| ![Star count](https://flat.badgen.net/github/stars/AndrewRadev/sideways.vim?label=★&color=black) |[sideways.vim](https://github.com/AndrewRadev/sideways.vim)|A Vim plugin to move function arguments (and other delimited-by-something items) left and right. |
| ![Star count](https://flat.badgen.net/github/stars/nvim-neotest/neotest?label=★&color=black) |[neotest](https://github.com/nvim-neotest/neotest)|An extensible framework for interacting with tests within NeoVim. |
| ![Star count](https://flat.badgen.net/github/stars/ajh17/Spacegray.vim?label=★&color=black) |[Spacegray.vim](https://github.com/ajh17/Spacegray.vim)|A Vim color scheme loosely based on the Spacegray Xcode theme. |
| ![Star count](https://flat.badgen.net/github/stars/antoinemadec/coc-fzf?label=★&color=black) |[coc-fzf](https://github.com/antoinemadec/coc-fzf)|fzf :heart: coc.nvim |
| ![Star count](https://flat.badgen.net/github/stars/whiteinge/diffconflicts?label=★&color=black) |[diffconflicts](https://github.com/whiteinge/diffconflicts)|A better Vimdiff Git mergetool |
| ![Star count](https://flat.badgen.net/github/stars/tmux-plugins/vim-tmux-focus-events?label=★&color=black) |[vim-tmux-focus-events](https://github.com/tmux-plugins/vim-tmux-focus-events)|Make terminal vim and tmux work better together. |
| ![Star count](https://flat.badgen.net/github/stars/tpope/vim-cucumber?label=★&color=black) |[vim-cucumber](https://github.com/tpope/vim-cucumber)|Vim Cucumber runtime files |
| ![Star count](https://flat.badgen.net/github/stars/tmux-plugins/vim-tmux?label=★&color=black) |[vim-tmux](https://github.com/tmux-plugins/vim-tmux)|vim plugin for tmux.conf |
| ![Star count](https://flat.badgen.net/github/stars/peitalin/vim-jsx-typescript?label=★&color=black) |[vim-jsx-typescript](https://github.com/peitalin/vim-jsx-typescript)|React JSX syntax highlighting for vim and Typescript |
| ![Star count](https://flat.badgen.net/github/stars/FooSoft/vim-argwrap?label=★&color=black) |[vim-argwrap](https://github.com/FooSoft/vim-argwrap)|Wrap and unwrap function arguments, lists, and dictionaries in Vim |
| ![Star count](https://flat.badgen.net/github/stars/dhruvasagar/vim-prosession?label=★&color=black) |[vim-prosession](https://github.com/dhruvasagar/vim-prosession)|Handle vim sessions like a pro |
| ![Star count](https://flat.badgen.net/github/stars/antoinemadec/FixCursorHold.nvim?label=★&color=black) |[FixCursorHold.nvim](https://github.com/antoinemadec/FixCursorHold.nvim)|Fix CursorHold Performance. |
| ![Star count](https://flat.badgen.net/github/stars/nelstrom/vim-visual-star-search?label=★&color=black) |[vim-visual-star-search](https://github.com/nelstrom/vim-visual-star-search)|Start a * or # search from a visual block |
| ![Star count](https://flat.badgen.net/github/stars/dhruvasagar/vim-zoom?label=★&color=black) |[vim-zoom](https://github.com/dhruvasagar/vim-zoom)|Toggle zoom in / out individual windows (splits) |
| ![Star count](https://flat.badgen.net/github/stars/powerman/vim-plugin-AnsiEsc?label=★&color=black) |[vim-plugin-AnsiEsc](https://github.com/powerman/vim-plugin-AnsiEsc)|ansi escape sequences concealed, but highlighted as specified (conceal) |
| ![Star count](https://flat.badgen.net/github/stars/vim-scripts/matchit.zip?label=★&color=black) |[matchit.zip](https://github.com/vim-scripts/matchit.zip)|extended % matching for HTML, LaTeX, and many other languages |
| ![Star count](https://flat.badgen.net/github/stars/MarcWeber/vim-addon-local-vimrc?label=★&color=black) |[vim-addon-local-vimrc](https://github.com/MarcWeber/vim-addon-local-vimrc)|kiss local vimrc with hash protection |
| ![Star count](https://flat.badgen.net/github/stars/tfnico/vim-gradle?label=★&color=black) |[vim-gradle](https://github.com/tfnico/vim-gradle)|Simple little vim-bundle that recognizes .gradle files as being groovy syntax |
| ![Star count](https://flat.badgen.net/github/stars/jszakmeister/vim-togglecursor?label=★&color=black) |[vim-togglecursor](https://github.com/jszakmeister/vim-togglecursor)|Toggle the cursor shape in the terminal for Vim. |
| ![Star count](https://flat.badgen.net/github/stars/Pychimp/vim-luna?label=★&color=black) |[vim-luna](https://github.com/Pychimp/vim-luna)|Touchdown on Lunar Surface ! :) |
| ![Star count](https://flat.badgen.net/github/stars/nono/vim-handlebars?label=★&color=black) |[vim-handlebars](https://github.com/nono/vim-handlebars)|[deprecated] Vim plugin for Handlebars |
| ![Star count](https://flat.badgen.net/github/stars/roxma/vim-window-resize-easy?label=★&color=black) |[vim-window-resize-easy](https://github.com/roxma/vim-window-resize-easy)| |
| ![Star count](https://flat.badgen.net/github/stars/vim-scripts/groovy.vim?label=★&color=black) |[groovy.vim](https://github.com/vim-scripts/groovy.vim)|syntax file for the groovy programming language |
| ![Star count](https://flat.badgen.net/github/stars/nvim-neotest/neotest-go?label=★&color=black) |[neotest-go](https://github.com/nvim-neotest/neotest-go)| |
| ![Star count](https://flat.badgen.net/github/stars/ernstvanderlinden/vim-coldfusion?label=★&color=black) |[vim-coldfusion](https://github.com/ernstvanderlinden/vim-coldfusion)|Vim - ColdFusion Syntax Highlighter |
| ![Star count](https://flat.badgen.net/github/stars/vim-scripts/indenthtml.vim?label=★&color=black) |[indenthtml.vim](https://github.com/vim-scripts/indenthtml.vim)|alternative html indent script |
| ![Star count](https://flat.badgen.net/github/stars/mutewinter/UnconditionalPaste?label=★&color=black) |[UnconditionalPaste](https://github.com/mutewinter/UnconditionalPaste)|A clone of UnconditionalPaste from http://www.vim.org/scripts/script.php?script_id=3355 since it's not updated on GitHub yet. |
| ![Star count](https://flat.badgen.net/github/stars/CPWeaver/nvim-goc.lua?label=★&color=black) |[nvim-goc.lua](https://github.com/CPWeaver/nvim-goc.lua)|Go Coverage for Neovim |
| ![Star count](https://flat.badgen.net/github/stars/snooc/base16-vim?label=★&color=black) |[base16-vim](https://github.com/snooc/base16-vim)|Base16 for Vim |

_That's 86 plugins, holy crap._

_Generated by `rake update_readme` on 2022/06/21._

