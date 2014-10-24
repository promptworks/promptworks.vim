" Use Vim settings, rather then Vi settings. This setting must be as early as
" possible, as it has side effects.
set nocompatible

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif
filetype plugin indent on

set guioptions=egm
set guifont=Menlo:h14
set antialias
colorscheme Tomorrow

" Local config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
