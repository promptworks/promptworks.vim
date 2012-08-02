" convert all tabs to spaces
nnoremap <leader>t<space> :%s/\t/  /g<CR>

function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    silent! %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | :call <SID>StripTrailingWhitespaces() | endif
