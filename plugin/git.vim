" Git helpers
nnoremap <leader>gc :call <SID>SourceTreeCommit()<CR>

" stree is not included in the AppStore version
" of SourceTree, but you can download it from
" http://downloads.atlassian.com/software/sourcetree/SourceTreeAppStoreCmdLineToolInstaller.pkg
function! s:SourceTreeCommit()
  call system("cd " . expand("%:p:h") . " && stree `git rev-parse --show-toplevel`")
endfunction

" Git commit messages have spellcheck and start in insert mode
if has('autocmd')
  au BufNewFile,BufRead COMMIT_EDITMSG setlocal spell!
  au BufNewFile,BufRead COMMIT_EDITMSG call feedkeys('ggi', 't')
endif
