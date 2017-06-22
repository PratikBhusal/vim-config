"Automatic Directory Switching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'
"autocmd BufEnter * silent!cd C:\Programming-Projects
autocmd BufEnter * silent! lcd %:p:h
autocmd VimEnter * silent!cd C:\Users\Pratik\Documents\Programming-Projects
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Visual Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=Consolas:h12:cANSI:qDRAFT,DejaVu_Sans_Mono:h12:cANSI:qDRAFT
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"User powershell instead of Windows CMD (work in progress)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set shell=powershell
"set shellcmdflag=-command
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plugin Configs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Nerd Tree
    "Toggle NERD Tree
    "nmap <silent> <Leader>n :NERDTreeToggle "C:\Programming-Projects"<CR>
    nmap <silent> <Leader>n :NERDTreeToggle<CR>
    "Arrow Indicators
    "let g:NERDTreeDirArrowExpandable="+"
    "let g:NERDTreeDirArrowCollapsible="~"
    "Show hidden files/folders by default
    let NERDTreeShowHidden=1
    let g:NERDTreeChDirMode = 2
    let g:ctrlp_working_path_mode = 'rw'

"ctrlP
let g:ctrlp_cache_dir = $HOME.'/.vim/.cache/ctrlp-windows'
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") |CtrlP /Programming-Projects | endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Mis Settings
"""""""""""""""""""""""""""""""""""""""""""""""""
au GUIEnter * simalt ~x "Maximize Vim on Windows
"""""""""""""""""""""""""""""""""""""""""""""""""
