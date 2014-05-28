" TODO: Move all mappings after the sets

""""""""""""""""""""""""
""" *** SETTINGS *** """
""""""""""""""""""""""""

set nocompatible

" Load file-type specific plugins and indent definitions
filetype plugin indent on
syntax on

" Put temp files in common directory
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" watch for file changes
set autoread

" prevent the directory-specific vimrc files from executing potentially dangerous commands
set secure

" More bash-like tab completion
set wildmode=longest,list,full
set wildmenu

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/tmp/cache/*,*/*.jpg,*/*.png,*/*.pyc

" Backspace over anything
set backspace=indent,eol,start

set autoindent
set smartindent

" Fold by syntax, start full open
set foldenable
set foldlevelstart=99


""""""""""""
""" Tabs """
""""""""""""

" Use 2-space tabs
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab

""""""""""""""""
""" Spelling """
""""""""""""""""

" Use english for spellchecking
set spl=en spell
set nospell


""""""""""""""
""" Search """
""""""""""""""

" Search as you type
set incsearch
" highlight search results
set hlsearch

" Ignore case on search unless search has uppercase characters
set ignorecase
set smartcase


"""""""""""""""
""" Visuals """
"""""""""""""""

" Use relative line numbers, but show the absolute number on the current line
set relativenumber
set number

" Show normal-mode commands as you type
set showcmd

" Show cursor and file position
set ruler

" Show whitespace as unicode chars
set listchars=tab:‣\ ,trail:\ ,extends:…,precedes:…,nbsp:˖
set list

set colorcolumn=80


"""""""""""
""" GUI """
"""""""""""

set guioptions=egm
set guifont=Menlo:h14
set antialias
colorscheme Tomorrow


if has("mouse")
  set mouse=a
  set mousehide
  set ttymouse=xterm2
endif

" netrw tree mode
let g:netrw_liststyle=3


""""""""""""""""""""""""
""" *** MAPPINGS *** """
""""""""""""""""""""""""

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

" 'Q' runs the macro in the 'q' register, instead of opening ex mode.
nnoremap Q @q

" Fast saving
nnoremap <leader>w :w!<cr>

" Return cursor to start of edit after repeat
nnoremap . .`[

" Hit TAB twice to switch to the next window
nnoremap <tab><tab> <C-w>w
nnoremap <s-tab><s-tab> <C-w>W

" <leader>h to clear the search highlighting
nnoremap <leader>h :noh<CR>

" Toggle showing spelling errors
nnoremap <silent> <leader>s :set spell!<CR>

" use . to repeat a change for every line in the block
vnoremap <silent> . :normal .<CR>

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" :W also saves
cnoreabbrev W w

" Force Saving Files that Require Root Permission
cnoremap w!! %!sudo tee > /dev/null %

" Maps more bash-like keys to command line mode (colon mode)
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <M-BS> <C-w>



""""""""""""""""""""""""
""" *** COMMANDS *** """
""""""""""""""""""""""""

" run an external command and give you the results in a small new buffer
" Example
"   :R echo 'hi'
command! -nargs=*  -complete=shellcmd R belowright 15new | r ! <args>


"""""""""""""""""""""""""""""
""" *** AUTO COMMANDS *** """
"""""""""""""""""""""""""""""

""""""""""""""""""
""" Whitespace """
""""""""""""""""""

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | :call <SID>StripTrailingWhitespaces() | endif

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


"""""""""""
""" GIT """
"""""""""""

if has('autocmd')
  au BufNewFile,BufRead COMMIT_EDITMSG setlocal spell!
  au BufNewFile,BufRead COMMIT_EDITMSG call feedkeys('ggi', 't')
endif



"""""""""""""""""""""""
""" *** PLUGINS *** """
"""""""""""""""""""""""

""""""""""""""
""" CTRL P """
""""""""""""""

let g:ctrlp_custom_ignore = '\.git$\|tmp$\|\.bundle$\|public/uploads$\|public/system$\|public\/topics$\|public/user_profiles\|\.sass-cache$|node_modules$'


""""""""""""""""""
""" Reveal.vim """
""""""""""""""""""

" Open the current file's directory in Finder
nnoremap <leader>o :Reveal<CR>


"""""""""""""""""""""""""""""""""""""""
""" Visual Mode */# from Scrooloose """
"""""""""""""""""""""""""""""""""""""""

function! s:VSetSearch()
  let temp = @@
  norm! gvy
  let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
  let @@ = temp
endfunction

vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR><c-o>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR><c-o>


""""""""""""""""
""" NERDTree """
""""""""""""""""

nnoremap <leader>f :NERDTreeFind<enter>
nnoremap <leader>n :NERDTreeToggle<enter>


""""""""""""""""""""""
""" Rainbow Parens """
""""""""""""""""""""""

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


""""""""""""""""""
""" SourceTree """
""""""""""""""""""

command Stree :silent !stree


""""""""""""""
""" Switch """
""""""""""""""

nnoremap <leader>- :Switch<CR>


""""""""""""""""""
""" Tabularize """
""""""""""""""""""

if exists(":Tabularize")
  " align =
  nnoremap <Leader>a= :Tabularize /=<CR>
  vnoremap <Leader>a= :Tabularize /=<CR>

  " align : but without a space before them
  nnoremap <Leader>a: :Tabularize /:\zs/l0r1<CR>
  vnoremap <Leader>a: :Tabularize /:\zs/l0r1<CR>

  " align {
  nnoremap <Leader>a{ :Tabularize /{<CR>
  vnoremap <Leader>a{ :Tabularize /{<CR>

  " align ,'s, but without a space before them
  nnoremap <Leader>a, :Tabularize /,\zs/l0r1<CR>
  vnoremap <Leader>a, :Tabularize /,\zs/l0r1<CR>
endif
