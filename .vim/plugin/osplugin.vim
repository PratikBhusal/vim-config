if exists('g:loaded_osplugin_options') || &compatible
  finish
endif
let g:loaded_big_file_options = 1

if g:windows
    call osplugin#init('windows.vim')
elseif g:linux
    call osplugin#init('linux.vim')
elseif g:cygwin
    call osplugin#init('cygwin.vim')
    call osplugin#init('linux.vim')
elseif g:macOS
    call osplugin#init('macOS.vim')
endif
