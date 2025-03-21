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

autocmd VimEnter * silent !source ~/.bashrc

