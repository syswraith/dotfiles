set number
set autoindent
set ai
set si
set shiftwidth=4
set hlsearch
syntax on
filetype indent on

:set shellcmdflag=-ic
:command C80 set cc=80

call plug#begin()
Plug 'gruvbox-community/gruvbox'
Plug 'Tervicke/IpsumVim'
" Plug 'vimsence/vimsence'
call plug#end()
