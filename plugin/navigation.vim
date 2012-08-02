" Fold by syntax, start full open
set foldenable
set foldlevelstart=99

" Search as you type
set incsearch
" highlight search results
set hlsearch

" More bash-like tab completion
set wildmode=longest,list,full
set wildmenu

" Return cursor to start of edit after repeat
nmap . .`[

" Ignore case on search unless search has uppercase characters
set ignorecase
set smartcase

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/tmp/cache/*,*/*.jpg,*/*.png,*/*.pyc

" Use alt+arrows & backspace assuming they're set up to work for bash
inoremap <Esc>b <C-o>b
inoremap <Esc>f <C-o>w
inoremap <Esc><BS> <C-o>db

" netrw tree mode
let g:netrw_liststyle=3

let g:ctrlp_dotfiles = 0
let g:ctrlp_custom_ignore = '\.git$\|tmp$\|\.bundle$\|public/uploads$\|public/system$\|public\/topics$\|public/user_profiles\|\.sass-cache$'

" Hit TAB twice to switch to the next window
nnoremap <tab><tab> <C-w>w

" Open the current file's directory in Finder
nnoremap <leader>o :!open<space>%:p:h<enter>
