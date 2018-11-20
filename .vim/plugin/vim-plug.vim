" ---------------
" vim-plug
" ---------------
command! ReloadVimPlug source ~/.vim/vim-plug.vim
if !exists("*PluginReloadAndRun")
function PluginReloadAndRun(command)
    :ReloadVimPlug
    execute a:command
  endfunction
endif


nnoremap <Leader>pi :call PluginReloadAndRun("PlugInstall")<CR>
nnoremap <Leader>pu :call PluginReloadAndRun("PlugUpdate")<CR>
nnoremap <Leader>pc :call PluginReloadAndRun("PlugClean")<CR>
nnoremap <Leader>ps :call PluginReloadAndRun("PlugStatus")<CR>


