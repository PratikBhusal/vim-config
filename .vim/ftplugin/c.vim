" Clang_Complete {{{ -----------------------------------------------------------
let g:clang_snippets = 1
let g:clang_snippets_engine = 'ultisnips'
let g:clang_auto_select = 1
let g:clang_close_preview = 1
let g:clang_complete_copen = 1
let g:clang_auto_select = 1
let g:clang_complete_optional_args_in_snippets = 1
inoremap <buffer> <C-Space> <C-x><C-o>

if g:windows
    let g:clang_library_path= 'C:\Program Files\LLVM\bin'
    let g:clang_user_options = '--target=x86_64-w64-mingw32 -Weverything -std=c11'
elseif g:linux
    let g:clang_library_path = '/usr/lib/llvm-4.0/lib'
    let g:clang_user_options = '-Weverything -std=c11'
endif

" Auto-Pairs Compatibility {{{
let g:AutoPairsMapCR = 0
imap <buffer> <silent> <CR> <CR><Plug>AutoPairsReturn
" Auto-Pairs Compatibility }}}

" Clang_Complete }}} -----------------------------------------------------------
