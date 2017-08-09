"sudo mount /dev/sda4 /media/pratik/10264CD2264CBB0C

" Make Vim Useable {{{ ---------------------------------------------------------
set guifont=DejaVu\ Sans\ Mono\ 11
set lines=999 columns=999
set clipboard=unnamedplu
" Make Vim Useable }}} ---------------------------------------------------------

" CtrlP {{{ --------------------------------------------------------------------
let g:ctrlp_cache_dir = $HOME.'/.vim/.cache/ctrlp-linux'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter *
    \ if argc() == 0 && !exists("s:std_in") |
        \ exe "CtrlP /media/pratik/10264CD2264CBB0C/Programming-Projects/" . 
        \ strftime('%Y') |
    \ endif
" CtrlP }}} --------------------------------------------------------------------
