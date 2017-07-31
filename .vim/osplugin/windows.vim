" Font Settings {{{ ------------------------------------------------------------
set guifont=Consolas:h12:cANSI:qDRAFT,DejaVu_Sans_Mono:h12:cANSI:qDRAF
" Font Settings }}} ------------------------------------------------------------

" CtrlP Configs {{{ ------------------------------------------------------------
let g:ctrlp_cache_dir = $HOME.'/.vim/.cache/ctrlp-windows'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") |exe
    \"CtrlP C:/Programming-Projects/" . strftime('%Y')|endif
" CtrlP Configs }}} ------------------------------------------------------------

" Misc Settings {{{ -------------------------------------------------------------
au GUIEnter * simalt ~x "Maximize Vim on Windows
set encoding=utf-8
set clipboard=unnamed
" Misc Settings }}} ------------------------------------------------------------
