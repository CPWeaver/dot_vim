" Unmap these keys so they can be used for other mappings.
if has('gui_macvim')
  " D-t
  macmenu &File.New\ Tab key=<nop>
  " D-p
  macmenu &File.Print key=<nop>

  " D-p
  macmenu Edit.Find.Find\.\.\. key=<nop>

  " D-b
  macmenu &Tools.Make key=<nop>
  " D-l
  macmenu &Tools.List\ Errors key=<nop>

  " Autoload NERDTree and move the cursor to the main window
  autocmd VimEnter * NERDTree
  autocmd VimEnter * wincmd p
endif

set visualbell " Keeps the audio bell from sounding in the GUI
