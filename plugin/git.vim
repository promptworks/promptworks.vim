" Git commit messages have spellcheck and start in insert mode
if has('autocmd')
  au BufNewFile,BufRead COMMIT_EDITMSG setlocal spell!
  au BufNewFile,BufRead COMMIT_EDITMSG call feedkeys('ggi', 't')
endif
