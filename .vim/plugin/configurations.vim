" Platform Identification {{{ --------------------------------------------------
let g:LINUX = has('unix') && !has('macunix') && !has('win32unix')
let g:WINDOWS = has('win32') || has('win64')
" Platform Identification }}} --------------------------------------------------

" Vim-Fugitive {{{ -------------------------------------------------------------
nnoremap <leader>gg :Gstatus<cr>
nnoremap <leader>gp :Gpush<cr>
" Vim-Fugitive }}} -------------------------------------------------------------

" NERDTree {{{ -----------------------------------------------------------------
if g:LINUX
    let NERDTreeBookmarksFile=expand("$HOME/.vim/.cache/NERDTree/.Linux")
elseif g:WINDOWS
    let NERDTreeBookmarksFile=expand("$HOME/.vim/.cache/NERDTree/.Windows")
endif
let NERDTreeShowBookmarks=1
let NERDTreeShowLineNumbers=1
let NERDTreeIgnore=['\.ncb$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$',
    \ '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$',
    \ '\.embed\.manifest$', '\.embed\.manifest.res$',
    \ '\.intermediate\.manifest$', '^mt.dep$' ]
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:NERDTreeChDirMode = 2
" NERDTree }}} -----------------------------------------------------------------

" Ultisnips {{{ ----------------------------------------------------------------
" Trigger configuration.
" Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
set runtimepath+=~\plugged\vim-snippets\UltiSnips
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsSnippetDirectories=["UltiSnips","plugged/vim-snippets/UltiSnips"]
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<Leader>z"
let g:UltiSnipsEditSplit="vertical"
" Ultisnips }}} ----------------------------------------------------------------

" CtrlP {{{ --------------------------------------------------------------------
map <silent> <Leader>p :CtrlP<CR>
cabbrev ls <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'CtrlPBuffer' : 'ls')<CR>
cabbrev sl <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'CtrlPBuffer' : 'sl')<CR>
map <silent> <Leader>b :CtrlPBookmarkDir<CR>
let g:ctrlp_dont_split = 'NERD_tree_2'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
let g:ctrlp_root_markers = ['.gitignore']
let g:ctrlp_extensions = ['bookmarkdir']
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|bin)$',
    \ 'file': '\v\.(exe|so|dll|out|xmi)$'
\ }
let g:ctrlp_follow_symlinks = 1

autocmd StdinReadPre * let s:std_in=1
if g:LINUX
    let g:ctrlp_cache_dir = $HOME.'/.vim/.cache/ctrlp-linux'
    autocmd VimEnter *
        \ if argc() == 0 && !exists("s:std_in") |
            \ exe "CtrlP /media/pratik/10264CD2264CBB0C/Programming-Projects/" .
            \ strftime('%Y') |
        \ endif
elseif g:WINDOWS
    let g:ctrlp_cache_dir = $HOME.'/.vim/.cache/ctrlp-windows'
    autocmd VimEnter *
        \ if argc() == 0 && !exists("s:std_in") |
            \ exe "CtrlP C:/Programming-Projects/" . strftime('%Y') |
        \ endif
endif
" CtrlP }}} --------------------------------------------------------------------

" YouCompleteMe {{{ ------------------------------------------------------------
if g:LINUX
    let g:ycm_key_list_select_completion=['<Leader>n']
    let g:ycm_key_list_previous_completion=['<Leader>p']
    let g:ycm_autoclose_preview_window_after_completion=1
    " let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm'
    let g:ycm_global_ycm_extra_conf = '~/.vim/YouCompleteMe/.ycm_extra_conf.py'
    let g:ycm_python_binary_path = '/usr/bin/python3'
endif
" YouCompleteMe }}} ------------------------------------------------------------

" VimCompletesMe {{{ -----------------------------------------------------------
" let g:vcm_default_maps = 0
" imap <Leader><Tab>   <plug>vim_completes_me_forward
" imap <S-Tab> <plug>vim_completes_me_backward
" VimCompletesMe }}} -----------------------------------------------------------

" Syntastic {{{ ----------------------------------------------------------------
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_aggregate_errors = 1
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
" Syntastic }}} ----------------------------------------------------------------

" vim-airline {{{ --------------------------------------------------------------
let g:airline_theme='molokai'
" }}} --------------------------------------------------------------------------

" vim-lightline {{{ ------------------------------------------------------------
" let g:lightline = {
"     \ 'colorscheme': 'default',
" \ }
" let g:lightline.mode_map = {
" 	\ 'n' : 'Normal',
" 	\ 'i' : 'Insert',
" 	\ 'R' : 'Replace',
" 	\ 'v' : 'Visual',
" 	\ 'V' : 'V-Line',
" 	\ "\<C-v>": 'V-Block',
" 	\ 'c' : 'Command',
" 	\ 's' : 'Select',
" 	\ 'S' : 'S-Line',
" 	\ "\<C-s>": 'S-Block',
" 	\ 't': 'Terminal',
" \ }
" vim-lightline }}} ------------------------------------------------------------

" Neocomplete {{{ --------------------------------------------------------------
" TODO : Add new configurations
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Neocomplete }}} --------------------------------------------------------------
