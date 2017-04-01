"compile/run the program
noremap <buffer> <silent> <F9> :w<cr>:!"C:\Binaries\compileRun\C++\compileRunC++.bat" "%:p:r"<cr><cr>
noremap <buffer> <silent> <F10> :!%:p:r.exe<cr><cr>
"autocmd FileType cpp noremap <buffer> <silent> <F9> :w<cr>:!"C:\Binaries\compileRun\C++\compileRunC++.bat" %:p:r<cr><cr>