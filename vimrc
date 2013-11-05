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
Bundle 'slim-template/vim-slim'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-fugitive'
Bundle 'jiangmiao/simple-javascript-indenter'
Bundle 'tpope/vim-surround'
Bundle 'avakhov/vim-yaml'
Bundle 'mileszs/ack.vim'
Bundle 'vim-scripts/argtextobj.vim'
Bundle 'vim-scripts/haskell.vim'
Bundle 'juvenn/mustache.vim'
Bundle 'scrooloose/syntastic'
Bundle 'godlygeek/tabular'
Bundle 'tomtom/tcomment_vim'
Bundle 'Align'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-bundler'
Bundle 'nono/vim-handlebars'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'digitaltoad/vim-jade'
Bundle 'itspriddle/vim-jquery'
Bundle 'leshill/vim-json'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'kana/vim-textobj-user'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'jshint.vim'
Bundle 'gf3/peg.vim'
Bundle 'alunny/pegjs-vim'
Bundle 'switch.vim'
Bundle 'tudorprodan/html_annoyance.vim'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'matchit.zip'
Bundle 'speeddating.vim'
Bundle 'sjl/gundo.vim'
Bundle 'abolish.vim'
Bundle 'timcharper/textile.vim'
Bundle 'xenoterracide/html.vim'
Bundle 'danro/rename.vim'
Bundle 'bogado/file-line'

"indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
Bundle 'nathanaelkane/vim-indent-guides'

" SnipMate stuff
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"
Bundle "garbas/vim-snipmate"

" Colors
Bundle 'tpope/vim-vividchalk'
Bundle 'scottymoon/vim-twilight'
Bundle 'd11wtq/tomorrow-theme-vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'moria'
Bundle '29decibel/codeschool-vim-theme'
Bundle 'Lucius'
Bundle 'Mustang2'
Bundle 'cschlueter/vim-clouds'
Bundle 'tomasr/molokai'
Bundle 'gregsexton/Muon'
Bundle 'summerfruit256.vim'
Bundle 'pyte'
Bundle 'jpo/vim-railscasts-theme'
Bundle 'github-theme'
Bundle 'Wombat'
Bundle 'jellybeans.vim'
Bundle 'Pychimp/vim-sol'
Bundle 'Pychimp/vim-luna'
Bundle 'john2x/flatui.vim'

" My own settings
Bundle 'nicholaides/my.vim'

filetype plugin indent on
