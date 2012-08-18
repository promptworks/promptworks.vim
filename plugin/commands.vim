" run an external command and give you the results in a small new buffer
" Example
"   :R echo 'hi'
command! -nargs=*  -complete=shellcmd R belowright 15new | r ! <args>
