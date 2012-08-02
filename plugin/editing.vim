" Backspace over anything
set backspace=indent,eol,start

set autoindent
set smartindent

" Use 2-space tabs
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab

" remap jj to escape in insert mode
inoremap jk <Esc>
inoremap kj <Esc>

" Normally Y copies the whole row - not from cursor to EOL like other capitals. This makes it more consistent.
map Y y$

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Force Saving Files that Require Root Permission
cmap w!! %!sudo tee > /dev/null %

" :W also saves
cnoreabbrev W w


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

" convert all tabs to spaces
nnoremap <leader>t<space> :%s/\t/  /g<CR>

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | :call <SID>StripTrailingWhitespaces() | endif
