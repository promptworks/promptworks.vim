" Force Saving Files that Require Root Permission
cnoremap w!! %!sudo tee > /dev/null %

" :W also saves
cnoreabbrev W w

" Fast saving
nnoremap <leader>w :w!<cr>
