let g:ctrlp_reuse_window = 'nerdtree\|netrw\|help\|quickfix'
let g:ctrlp_extensions = ['bookmarkdir']
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|bin)$',
    \ 'file': '\v\.(exe|so|dll|out|xmi)$'
\ }
let g:ctrlp_follow_symlinks = 1

" Ignore and Index files with .gitignore file. Prefer ripgrep > git {{{
let g:ctrlp_root_markers = ['.gitignore']
let g:ctrlp_user_command = ( executable('rg') )
    \ ? 'rg %s -i --files --no-heading --color=never --glob ""'
    \ : ['.git', 'cd %s && git ls-files']
let g:ctrlp_use_caching = 0
" Ignore and Index files with .gitignore file. Prefer rg > ag > git }}}

" Load CtrlP at startup {{{
autocmd StdinReadPre * let s:std_in=1
if g:linux
    let g:ctrlp_cache_dir = $HOME.'/.vim/.cache/ctrlp-linux'
    autocmd VimEnter *
        \ if argc() == 0 && !exists("s:std_in") |
            \ exe "CtrlP /media/pratik/10264CD2264CBB0C/Programming-Projects/" .
            \ strftime('%Y') |
        \ endif
elseif g:windows
    let g:ctrlp_cache_dir = $HOME.'/.vim/.cache/ctrlp-windows'
    autocmd VimEnter *
        \ if argc() == 0 && !exists("s:std_in") |
            \ exe "CtrlP C:/Programming-Projects/" . strftime('%Y') |
        \ endif
endif
" Load CtrlP at startup }}}

" Hotkeys {{{
nnoremap <silent> <Leader>p :CtrlP<CR>
cabbrev ls <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'CtrlPBuffer' : 'ls')<CR>
cabbrev sl <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'CtrlPBuffer' : 'sl')<CR>
nnoremap <silent> <Leader>b :CtrlPBookmarkDir<CR>
" Hotkeys }}}
