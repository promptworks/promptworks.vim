" Turn off highlighting of trailing spaces. We are already removing trailing spaces on save
let coffee_no_trailing_space_error = 1

" Turn variable assignment in to Ember set assignment, in CoffeeScript
" e.g.  turn
"   name = 'John'
" into
"  @set 'name', 'John'
nnoremap <leader>es I@set<space>'<esc>ea',<esc>:s/<space>*=<cr>
