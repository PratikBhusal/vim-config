" Compile/Run programs {{{ -----------------------------------------------------

if !( filereadable(expand('%:p:h') . "\/GNUmakefile") )
    setlocal makeprg=g++\ -Wall\ -fexceptions\ -g\ -O3\ -Wcast-align\
        \ -Wnon-virtual-dtor\ -Wshadow\ -Winit-self\ -Wredundant-decls\ -Wundef\
        \ -Wfloat-equal\ -Winline\ -Wunreachable-code\ -Wmissing-declarations\
        \ -Wmissing-include-dirs\ -Wswitch-enum\ -Wswitch-default\ -Wmain\ -Wextra\
        \ -Wzero-as-null-pointer-constant\ -pedantic-errors\ -pedantic\ %:p\ -o
endif

" -std=c++11
" -Weffc++
" -Wfatal-errors

" command -nargs=* Make make <args> | cwindow
" command  Make make | cwindow
if g:windows
    noremap <buffer> <silent> <F9> :update <bar> make %:p:r.exe<cr><cr>

    if has('nvim')
        noremap <buffer> <silent> <F10> :!%:p:r.exe<cr>
    else
        noremap <buffer> <silent> <F10> :!%:p:r.exe<cr><cr>
    endif
elseif g:linux
    noremap <buffer> <silent> <F9> :update <bar> make %:p:r.out<cr><cr>
    noremap <buffer> <silent> <F10> :!"%:p:r.out"<cr>
endif
" Compile/Run programs }}} -----------------------------------------------------

" Clang_Complete {{{ -----------------------------------------------------------
if g:windows
    let g:clang_library_path='C:\Program Files\LLVM\bin'
    let g:clang_user_options = '--target=x86_64-w64-mingw32 -Weverything -std=c++14'
    let g:clang_snippets = 1
    let g:clang_snippets_engine = 'ultisnips'
    let g:clang_auto_select = 1
    let g:clang_close_preview = 1
    let g:clang_complete_copen = 1
    let g:clang_auto_select = 1
    let g:clang_complete_optional_args_in_snippets = 1
    inoremap <buffer> <C-Space> <C-x><C-o>

    " Auto-Pairs Compatibility {{{
    let g:AutoPairsMapCR = 0
    imap <buffer> <silent> <CR> <CR><Plug>AutoPairsReturn
    " Auto-Pairs Compatibility }}}
endif
" Clang_Complete }}} -----------------------------------------------------------

" Clang-Format {{{ -------------------------------------------------------------
vnoremap <buffer> <Leader>cf :ClangFormat<CR>
" Configurations {{{
let g:clang_format#code_style = 'llvm'
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AlignConsecutiveAssignments" : "true",
            \ "AlignConsecutiveDeclarations" : "true",
            \ "AlignTrailingComments" : "true",
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AllowShortLoopsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "BraceWrapping" : {
                \ "AfterClass" : "false",
                \ "AfterControlStatement" : "false",
                \ "AfterEnum" : "true",
                \ "AfterFunction" : "true",
                \ "AfterNamespace" : "true",
                \ "AfterStruct" : "true",
                \ "AfterUnion" : "true",
                \ "BeforeCatch" : "true",
                \ "BeforeElse" : "true", },
            \ "BreakBeforeBinaryOperators" : "All",
            \ "BreakBeforeBraces" : "Custom",
            \ "BreakBeforeTernaryOperators" : "true",
            \ "BreakStringLiterals" : "false",
            \ "ColumnLimit" : 80,
            \ "PointerAlignment " : "Left",
            \ "SortIncludes" : "true",
            \ "SpaceBeforeAssignmentOperators" : "true",
            \ "SpaceBeforeParens" : "ControlStatements",
            \ "Standard" : "Cpp11",
            \ "UseTab" : "Never", }
" \ "SortUsingDeclarations" : "true",
" Configurations }}}
" Clang-Format }}} -------------------------------------------------------------
