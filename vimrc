""""""""""""""""""""""""
""" *** BUNDLES *** """
""""""""""""""""""""""""

if filereadable(expand("~/.vim/vimrc.bundles"))
  source ~/.vim/vimrc.bundles
end

""""""""""""""""""""""""
""" *** SETTINGS *** """
""""""""""""""""""""""""

set nocompatible

filetype plugin indent on

" Put temp files in common directory
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" prevent the directory-specific vimrc files from executing potentially dangerous commands
set secure

" More bash-like tab completion
set wildmode=longest,list,full
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/tmp/cache/*,*/*.jpg,*/*.png,*/*.pyc

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

""""""""""""""""
""" Spelling """
""""""""""""""""

" Use english for spellchecking
set nospell

" See https://github.com/neovim/neovim/issues/1551
if !has('nvim')
  set spl=en spell
endif


""""""""""""""
""" Search """
""""""""""""""

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

" Show whitespace as unicode chars
set listchars=tab:‣\ ,trail:\ ,extends:…,precedes:…,nbsp:˖
set list

set colorcolumn=80

" speed up macros and repeated commands
set lazyredraw

if has("mouse")
  set mouse=a
  set mousehide
  set ttymouse=xterm2
endif

" netrw tree mode
let g:netrw_liststyle=3

" Highlight markdown fenced code syntax
let g:markdown_fenced_languages = ['bash=sh', 'javascript', 'perl', 'python', 'ruby']

" Set correct filetype for *.markdown.erb files
au BufNewFile,BufRead *.markdown.erb set filetype=markdown.eruby

""""""""""""""""""""""""
""" *** MAPPINGS *** """
""""""""""""""""""""""""

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

" Maps more bash-like keys to command line mode (colon mode)
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <M-BS> <C-w>


"""""""""""""""""""
""" GUI Options """
"""""""""""""""""""

set guioptions=egm
set guifont=Menlo:h14
set antialias


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


""""""""""""""""""""
""" Auto-Pasting """
""""""""""""""""""""

" Automatically toggle between paste and nopaste
" https://coderwall.com/p/if9mda
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction


"""""""""""
""" GIT """
"""""""""""

if has('autocmd')
  au BufNewFile,BufRead COMMIT_EDITMSG setlocal spell!
endif



"""""""""""""""""""""""
""" *** PLUGINS *** """
"""""""""""""""""""""""

""""""""""""""""""""""""""""""""
""" ag (the silver searcher) """
""""""""""""""""""""""""""""""""

let g:ag_prg='ag --vimgrep --hidden'


""""""""""""""
""" CTRL P """
""""""""""""""

let g:ctrlp_custom_ignore = '\.git$\|tmp$\|\.bundle$\|public/uploads$\|public/system$\|public\/topics$\|public/user_profiles\|\.sass-cache$|node_modules$'

" Use The SilverSearcher to find files. It means we no longer need to cache.
let g:ag_binary = system("which ag | xargs echo -n")
if filereadable(g:ag_binary)
  let g:ctrlp_user_command = g:ag_binary . ' %s -l --nocolor -g ""'
endif

let g:ctrlp_use_caching = 0


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

let NERDTreeIgnore = ['\.pyc$', '^__pycache__$']

nnoremap <leader>f :NERDTreeFind<enter>
nnoremap <leader>n :NERDTreeToggle<enter>


""""""""""""""""""""""
""" Rainbow Parens """
""""""""""""""""""""""

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


""""""""""""""
""" Switch """
""""""""""""""

nnoremap <leader>- :Switch<CR>


""""""""""""""""""
""" Tabularize """
""""""""""""""""""

if exists(":Tabularize")
  " align =
  nnoremap <Leader>a= :Tabularize /^[^=]*\zs=/l1<CR>
  vnoremap <Leader>a= :Tabularize /^[^=]*\zs=/l1<CR>

  " align : but without a space before them
  nnoremap <Leader>a: :Tabularize/\(:.*\)\@<!:\zs /l0<CR>
  vnoremap <Leader>a: :Tabularize/\(:.*\)\@<!:\zs /l0<CR>

  " align {
  nnoremap <Leader>a{ :Tabularize /^[^{]*\zs{/l1<CR>
  vnoremap <Leader>a{ :Tabularize /^[^{]*\zs{/l1<CR>

  " align ,'s, but without a space before them
  nnoremap <Leader>a, :Tabularize /,\zs/l0r1<CR>
  vnoremap <Leader>a, :Tabularize /,\zs/l0r1<CR>
endif

"""""""""""""""""""
""" JS/JSON/JSX """
"""""""""""""""""""

let g:jsx_ext_required = 0 " Allow JSX in normal JS files
au FileType javascript setl sw=2 sts=2 et " Two spaces for JS
au FileType json setl sw=2 sts=2 et " Two spaces for JSON


""""""""""""""""""""
""" Local config """
""""""""""""""""""""

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

" ensure vim always runs from a shell
set shell=/bin/sh
