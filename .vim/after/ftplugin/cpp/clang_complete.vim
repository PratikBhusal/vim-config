let g:clang_snippets = 1
let g:clang_snippets_engine = 'ultisnips'
let g:clang_auto_select = 1
let g:clang_close_preview = 1
let g:clang_complete_copen = 1
let g:clang_auto_select = 1
let g:clang_complete_auto = 1
let g:clang_complete_optional_args_in_snippets = 1
inoremap <buffer> <C-Space> <C-x><C-o>

if g:windows
    let g:clang_library_path= 'C:\Program Files\LLVM\bin'
    let g:clang_user_options = '--target=x86_64-w64-mingw32 -Weverything -std=c++14'
elseif g:linux
    let g:clang_library_path = '/usr/lib/llvm-4.0/lib'
    let g:clang_user_options = '-Weverything -std=c++14'
endif
