set number
set autoindent
set ai
set si
set shiftwidth=4
set cc=80
syntax on
filetype indent on

"" Remove newbie crutches in Command Mode
"cnoremap <Down> <Nop>
"cnoremap <Left> <Nop>
"cnoremap <Right> <Nop>
"cnoremap <Up> <Nop>
"
"" Remove newbie crutches in Insert Mode
"inoremap <Down> <Nop>
"inoremap <Left> <Nop>
"inoremap <Right> <Nop>
"inoremap <Up> <Nop>
"
"" Remove newbie crutches in Normal Mode
"nnoremap <Down> <Nop>
"nnoremap <Left> <Nop>
"nnoremap <Right> <Nop>
"nnoremap <Up> <Nop>
"
"" Remove newbie crutches in Visual Mode
"vnoremap <Down> <Nop>
"vnoremap <Left> <Nop>
"vnoremap <Right> <Nop>
"vnoremap <Up> <Nop>

call plug#begin()
Plug 'gruvbox-community/gruvbox'
" Plug 'vimsence/vimsence'
call plug#end()

highlight Normal guibg=none
