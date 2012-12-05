if exists(":Tabularize")
  " align =
  nnoremap <Leader>a= :Tabularize /=<CR>
  vnoremap <Leader>a= :Tabularize /=<CR>

  " align :'s, but without a space before them
  nnoremap <Leader>a: :Tabularize /:\zs/l0r1<CR>
  vnoremap <Leader>a: :Tabularize /:\zs/l0r1<CR>

  " align {
  nnoremap <Leader>a{ :Tabularize /{<CR>
  vnoremap <Leader>a{ :Tabularize /{<CR>
endif
