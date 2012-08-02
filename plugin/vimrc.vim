" Open .vimrc in tab
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

augroup AutoReloadVimRC
  au!
  " automatically reload vimrc when it's saved
  au BufWritePost $MYVIMRC so $MYVIMRC
augroup END
