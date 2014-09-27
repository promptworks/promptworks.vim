" Use Vim settings, rather then Vi settings. This setting must be as early as
" possible, as it has side effects.
set nocompatible

"""""""""""
""" GUI """
"""""""""""

set guioptions=egm
set guifont=Menlo:h14
set antialias
colorscheme Tomorrow

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif
filetype plugin indent on

" Local config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
