if exists(':ALEDetail') == 2
    let g:ale_sign_column_always = 1
    let g:ale_linters = {
    \   'asm': [],
    \   'c': ['clang', 'clangtidy', 'gcc'],
    \   'cpp': ['clang','clangcheck','clangtidy','g++'],
    \   'java': [],
    \   'python': ['mypy'],
    \}
endif
