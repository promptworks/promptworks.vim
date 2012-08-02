if exists(":Tabularize")
  " alling =
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>

  " allign :'s, but without a space before them
  nmap <Leader>a: :Tabularize /:\zs/l0r1<CR>
  vmap <Leader>a: :Tabularize /:\zs/l0r1<CR>
endif
