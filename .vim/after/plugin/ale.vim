let g:ale_sign_column_always = 1
" c {{{
let g:ale_c_clang_options = '-std=c11 -Wall --target=x86_64-w64-mingw32'
let g:ale_c_clangcheck_options = '-std=c11 --target=x86_64-w64-mingw32'
let g:ale_c_clangtidy_options = '-std=c11 --target=x86_64-w64-mingw32'
" c }}}
" cpp {{{
let g:ale_cpp_clang_options = '-std=c++14 -Wall --target=x86_64-w64-mingw32'
let g:ale_cpp_clangcheck_options = '-std=c++14 --target=x86_64-w64-mingw32'
let g:ale_cpp_clangtidy_options = '-std=c++14 --target=x86_64-w64-mingw32'
" cpp }}}
let g:ale_linters = {
\   'asm': [],
\   'c': ['clang', 'clangtidy', 'gcc'],
\   'cpp': ['clang','clangcheck','clangtidy','g++'],
\   'java': [],
\}
