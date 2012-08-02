" use . to repeat a change for every line in the block
vnoremap <silent> . :normal .<CR>

" remap jj to escape in insert mode
inoremap jk <Esc>
inoremap kj <Esc>

" Normally Y copies the whole row - not from cursor to EOL like other capitals. This makes it more consistent.
noremap Y y$
