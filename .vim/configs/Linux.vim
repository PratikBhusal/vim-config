"Set font in gVim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=DejaVu\ Sans\ Mono\ 11
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Maximize Vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set lines=999 columns=999
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"NerdTree Plugin Configs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <leader>n :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"CtrlP Plugin Configs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") |CtrlP /media/pratik/10264CD2264CBB0C/Programming-Projects | endif
let g:ctrlp_cache_dir = $HOME.'/.vim/.cache/ctrlp-linux'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") |CtrlP| endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
