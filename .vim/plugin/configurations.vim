" Platform Identification {{{ --------------------------------------------------
let g:LINUX = has('unix') && !has('macunix') && !has('win32unix')
let g:WINDOWS = has('win32') || has('win64')
" Platform Identification }}} --------------------------------------------------

" Vim-Fugitive {{{ -------------------------------------------------------------
nnoremap <leader>gg :Gstatus<cr>
nnoremap <leader>gp :Gpush<cr>
" Vim-Fugitive }}} -------------------------------------------------------------

" NERDTree {{{ -----------------------------------------------------------------
let g:NERDTreeBookmarksFile= ( g:LINUX )
    \ ? expand('$HOME/.vim/.cache/NERDTree/.Linux')
    \ : expand('$HOME/.vim/.cache/NERDTree/.Windows')
let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeHijackNetrw = 1
let g:NERDTreeIgnore=['\.ncb$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$',
    \ '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$',
    \ '\.embed\.manifest$', '\.embed\.manifest.res$',
    \ '\.intermediate\.manifest$', '^mt.dep$' ]
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>
let g:NERDTreeShowHidden=1
let g:NERDTreeChDirMode = 2

" Auto Expand on Startup {{{
function! Nerdtree_auto_expand()
    let b:NERDTreeZoomed = 0
    call feedkeys("A")
endfunction

autocmd Filetype nerdtree call Nerdtree_auto_expand()
" Auto Expand on Startup }}}
" NERDTree }}} -----------------------------------------------------------------

" Ultisnips {{{ ----------------------------------------------------------------
set runtimepath+=~/.vim/UltiSnips
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
" let g:UltiSnipsSnippetDirectories=["UltiSnips","bundle/vim-snippets/UltiSnips"]
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<Leader>z"
let g:UltiSnipsEditSplit="vertical"
" Ultisnips }}} ----------------------------------------------------------------

" CtrlP {{{ --------------------------------------------------------------------
let g:ctrlp_reuse_window = 'nerdtree\|netrw\|help\|quickfix'
let g:ctrlp_extensions = ['bookmarkdir']
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|bin)$',
    \ 'file': '\v\.(exe|so|dll|out|xmi)$'
\ }
let g:ctrlp_follow_symlinks = 1

" Ignore and Index files with .gitignore file. Prefer rg > git {{{
let g:ctrlp_root_markers = ['.gitignore']
let g:ctrlp_user_command = ( executable('rg') )
    \ ? 'rg %s -i --files --no-heading'
    \ : ['.git', 'cd %s && git ls-files']
" Ignore and Index files with .gitignore file. Prefer rg > ag > git }}}

" Load CtrlP at startup {{{
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
" Load CtrlP at startup }}}

" Hotkeys {{{
nnoremap <silent> <Leader>p :CtrlP<CR>
cabbrev ls <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'CtrlPBuffer' : 'ls')<CR>
cabbrev sl <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'CtrlPBuffer' : 'sl')<CR>
nnoremap <silent> <Leader>b :CtrlPBookmarkDir<CR>
" Hotkeys }}}
" CtrlP }}} --------------------------------------------------------------------

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

" SnippetsCompleteMe {{{ -------------------------------------------------------
let g:scm_move_with_ctrl_s = 1
let g:scm_expand_on_confirm = 1
let g:scm_expand_on_enter = 1
" SnippetsCompleteMe }}} -------------------------------------------------------

" Vim-Easy-Align {{{ -----------------------------------------------------------
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
" Vim-Easy-Align }}} -----------------------------------------------------------
