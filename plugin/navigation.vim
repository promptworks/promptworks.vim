" Fold by syntax, start full open
set foldenable
set foldlevelstart=99

" More bash-like tab completion
set wildmode=longest,list,full
set wildmenu

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/tmp/cache/*,*/*.jpg,*/*.png,*/*.pyc

" netrw tree mode
let g:netrw_liststyle=3

let g:ctrlp_dotfiles = 0
let g:ctrlp_custom_ignore = '\.git$\|tmp$\|\.bundle$\|public/uploads$\|public/system$\|public\/topics$\|public/user_profiles\|\.sass-cache$'

" Hit TAB twice to switch to the next window
nnoremap <tab><tab> <C-w>w
nnoremap <s-tab><s-tab> <C-w>W

" Open the current file's directory in Finder
nnoremap <leader>o :silent !open<space>%:p:h<enter>
