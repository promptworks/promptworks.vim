" Don't try to be backwards compatible
set nocompatible

" Load file-type specific plugins and indent definitions
filetype plugin indent on

" Put temp files in common directory
set backupdir=~/.vim/backup
set directory=~/.vim/backup

set autoread                  " watch for file changes

" prevent the directory-specific vimrc files from executing potentially dangerous commands
set secure
