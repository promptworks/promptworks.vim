" Git helpers
nnoremap <leader>gc :call <SID>SourceTreeCommit()<CR>

" stree is not included in the AppStore version
" of SourceTree, but you can download it from
" http://downloads.atlassian.com/software/sourcetree/SourceTreeAppStoreCmdLineToolInstaller.pkg
function! s:SourceTreeCommit()
  call system("cd " . expand("%:p:h") . " && stree `git rev-parse --show-toplevel`")
endfunction

function! s:GitXCommit()
  call system("cd " . expand("%:p:h") . " && gitx -c")
endfunction

" Git `pub` current project, see url for source:
"   https://github.com/matschaffer/profile/blob/master/dotfiles/gitconfig
nnoremap <leader>gp :!cd %:p:h && git pub<CR>

" Git commit messages have spellcheck and start in insert mode
if has('autocmd')
  au BufNewFile,BufRead COMMIT_EDITMSG setlocal spell!
  au BufNewFile,BufRead COMMIT_EDITMSG call feedkeys('ggi', 't')
endif
