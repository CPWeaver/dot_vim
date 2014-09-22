# The Vim Configuration of Champions

## Installation


1. `bash <(curl -s https://raw.githubusercontent.com/CPWeaver/dot_vim/master/install)`
2. Enjoy enhanced productivity, increased levitation, reduced
   watermelon-related accidents, and startling sex appeal.

### Manual Install
1. `git clone http://github.com/CPWeaver/dot_vim.git ~/.vim`
2. `ln -s ~/.vim/vimrc ~/.vimrc`
3. `ln -s ~/.vim/gvimrc ~/.gvimrc`
4. Install [Vundle](https://github.com/gmarik/vundle) with `git clone
   http://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
5. `vim +PluginInstall +qall` _installs all of the plugins_

## Screenshot
* Screenshot goes here

<!--[![MacVim][ss]][ss]-->

<!--[ss]: https://github.com/mutewinter/dot_vim/raw/master/screenshots/MacVim.png-->

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
 * No soup for you.
 * List of plugins goes here
