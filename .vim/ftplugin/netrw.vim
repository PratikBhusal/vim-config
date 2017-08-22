" Change how netrw Looks {{{ ---------------------------------------------------
let g:netrw_liststyle = 1
let g:netrw_sizestyle = "H"
" Change how netrw Looks }}} ---------------------------------------------------

" If avalable, open CtrlP instead {{{ -----------------------------------------
if exists(':CtrlP')
    let g:netrw_banner = 0
    autocmd! FileType netrw CtrlP
endif
" If avaliable, open CtrlP instead }}} -----------------------------------------
