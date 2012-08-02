" Force Saving Files that Require Root Permission
cmap w!! %!sudo tee > /dev/null %

" :W also saves
cnoreabbrev W w

" Fast saving
nmap <leader>w :w!<cr>
