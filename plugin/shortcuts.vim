" use . to repeat a change for every line in the block
vnoremap <silent> . :normal .<CR>

" remap jk and kj to escape in insert mode
inoremap jk <Esc>
inoremap kj <Esc>

" Normally Y copies the whole row - not from cursor to EOL like other capitals. This makes it more consistent.
noremap Y y$

" Make K split lines (the opposite of J)
nnoremap K i<cr><esc>k$

" Make <leader>k split the line after the cursor
nnoremap <leader>k a<cr><esc>k$

" Insert new line above cursor
nnoremap <C-K> O<Esc>j

" Insert new line below cursor
nnoremap <C-J> o<Esc>k

" Insert space after cursor
nnoremap <C-L> li <Esc>h

" Insert space before cursor
nnoremap <C-H> i <Esc>l
