if exists(":Tabularize")
  " alling =
  nnoremap <Leader>a= :Tabularize /=<CR>
  vnoremap <Leader>a= :Tabularize /=<CR>

  " allign :'s, but without a space before them
  nnoremap <Leader>a: :Tabularize /:\zs/l0r1<CR>
  vnoremap <Leader>a: :Tabularize /:\zs/l0r1<CR>
endif
