"compile/run the program
noremap <buffer> <F9> :w<cr>:exec '!javac' shellescape(expand('%'), 1) '&& java' shellescape(expand('%:r'), 1)<cr><cr>
noremap <buffer> <F10> :exec '!java' shellescape(expand('%:r'), 1)<cr><cr>