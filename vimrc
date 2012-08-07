set nocompatible
filetype on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Let vundle manage itself
"required
Bundle 'gmarik/vundle'

Bundle 'vim-scripts/pbcopy.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-markdown'
Bundle 'bbommarito/vim-slim'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-fugitive'
Bundle 'jiangmiao/simple-javascript-indenter'
Bundle 'jpalardy/vim-slime'
Bundle 'tpope/vim-surround'
Bundle 'avakhov/vim-yaml'
Bundle 'mileszs/ack.vim'
Bundle 'vim-scripts/argtextobj.vim'
Bundle 'vim-scripts/haskell.vim'
Bundle 'juvenn/mustache.vim'
Bundle 'scrooloose/syntastic'
Bundle 'godlygeek/tabular'
Bundle 'tomtom/tcomment_vim'
Bundle 'tsaleh/vim-align'
Bundle 'tpope/vim-endwise'
Bundle 'tobiassvn/vim-gemfile'
Bundle 'nono/vim-handlebars'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'digitaltoad/vim-jade'
Bundle 'itspriddle/vim-jquery'
Bundle 'leshill/vim-json'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'kana/vim-textobj-user'
Bundle 'scrooloose/nerdtree'
Bundle 'hallettj/jslint.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'chrisbra/NrrwRgn'
Bundle 'vim-scripts/PreciseJump'
Bundle 'Lokaltog/vim-easymotion'

"indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
Bundle 'nathanaelkane/vim-indent-guides'

Bundle 'matschaffer/netrw-v142'
Bundle 'matschaffer/vim-islime2'

" SnipMate stuff
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle "garbas/vim-snipmate"

" Colors
Bundle 'tpope/vim-vividchalk'
Bundle 'scottymoon/vim-twilight'
Bundle 'ootoovak/vim-tomorrow-night'
Bundle 'altercation/vim-colors-solarized'
Bundle 'herald.vim'
Bundle 'moria'
Bundle '29decibel/codeschool-vim-theme'
Bundle 'Lucius'
Bundle 'Mustang2'
Bundle 'cschlueter/vim-clouds'
Bundle 'tomasr/molokai'
Bundle 'gregsexton/Muon'

" My own settings
Bundle 'nicholaides/my.vim'

filetype plugin indent on
