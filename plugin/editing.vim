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

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Return cursor to start of edit after repeat
nnoremap . .`[
