"sudo mount /dev/sda4 /media/pratik/10264CD2264CBB0C
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
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") |exe 
    \"CtrlP /media/pratik/10264CD2264CBB0C/Programming-Projects/" . 
    \strftime('%Y')|endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe {{{
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm'
let g:ycm_global_ycm_extra_conf = '~/.vim/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_python_binary_path = '/usr/bin/python3'
" }}}

