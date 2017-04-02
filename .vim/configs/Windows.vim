"Automatic Directory Switching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'
autocmd BufEnter * silent!cd C:\Users\Pratik\Documents\Programming-Projects
autocmd BufEnter * silent! lcd %:p:h
"autocmd VimEnter * silent!cd C:\Users\Pratik\Documents\Programming-Projects
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Plugin Configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Toggle NERD Tree
map <silent> <C-n> :NERDTreeToggle "C:\Users\Pratik\Documents\Programming-Projects"<CR>

"ctrlP
let g:ctrlp_root_markers = ['2016']
map <silent> <Leader>p :CtrlP C:\Users\Pratik\Documents\Programming-Projects<CR>
map <silent> <Leader>b :CtrlPBuffer<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""