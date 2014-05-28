" Add ',:focus' to the current line of describe/context rspec block
nnoremap <leader>rf $vbc,:focus do<Esc>
" Remove ', :focus => true' from the end of the describe/context rspec block
"  Really, it will remove anything between the last ',' and 'do'
nnoremap <leader>rF $bhvF,c<space><Esc>ciw<space><Esc>

" rspec: convert a ivar assignment to a let
nnoremap <leader>rl ^cwlet(:<Esc>elc2w){ <Esc>A }<Esc><<

autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
