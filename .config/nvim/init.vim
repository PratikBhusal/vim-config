set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc
cd ~

let g:loaded_python_provider = 1
autocmd GUIEnter * set lines=999 columns=999
let g:GuiWindowFullScreen=1
" call GuiWindowMaximized(1)

" Colorscheme Settings {{{ -----------------------------------------------------
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
"  }}} -------------------------------------------------------------------------
