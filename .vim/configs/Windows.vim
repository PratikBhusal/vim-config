"Automatic Directory Switching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'
autocmd BufEnter * silent!cd C:\Users\Pratik\Documents\Programming-Projects
autocmd BufEnter * silent! lcd %:p:h
"autocmd VimEnter * silent!cd C:\Users\Pratik\Documents\Programming-Projects
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plugin Configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Nerd Tree
    "Toggle NERD Tree
    map <silent> <C-n> :NERDTreeToggle "C:\Users\Pratik\Documents\Programming-Projects"<CR>
    "Arrow Indicators
    let g:NERDTreeDirArrowExpandable="+"
    let g:NERDTreeDirArrowCollapsible="~"
    "Show hidden files/folders by default
    let NERDTreeShowHidden=1

"ctrlP
let g:ctrlp_root_markers = ['2016']
map <silent> <Leader>p :CtrlP C:\Users\Pratik\Documents\Programming-Projects<CR>
map <silent> <Leader>b :CtrlPBuffer<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Mis Settings
"""""""""""""""""""""""""""""""""""""""""""""""""
au GUIEnter * simalt ~x "Maximize Vim on Windows
"""""""""""""""""""""""""""""""""""""""""""""""""
