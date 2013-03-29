" Search as you type
set incsearch
" highlight search results
set hlsearch

" Ignore case on search unless search has uppercase characters
set ignorecase
set smartcase


" Visual Mode */# from Scrooloose
function! s:VSetSearch()
  let temp = @@
  norm! gvy
  let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
  let @@ = temp
endfunction

vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR><c-o>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR><c-o>

" Open a Quickfix window for the last search
nnoremap <silent> ,/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

" <leader>h to clear the search highlighting
nnoremap <leader>h :noh<CR>
