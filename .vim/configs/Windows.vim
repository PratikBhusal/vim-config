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
let g:ctrlp_root_markers = ['2016']
map <silent> <Leader>p :CtrlPMixed<CR>
map <silent> <Leader>b :CtrlPBuffer<CR>
map <silent> <Leader>B :CtrlPBookmarkDir<CR>
let g:ctrlp_working_path_mode = 'w'
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_root_markers = ['.gitignore']
let g:ctrlp_extensions = ['mixed', 'bookmarkdir']
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") |CtrlP /Programming-Projects | endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Mis Settings
"""""""""""""""""""""""""""""""""""""""""""""""""
au GUIEnter * simalt ~x "Maximize Vim on Windows
"""""""""""""""""""""""""""""""""""""""""""""""""
