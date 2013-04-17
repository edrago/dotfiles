" =============== "
" Startup Options "
" =============== "
set nocompatible

" Windows Compatibility
if has("win32") || has("win64")
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
  set backspace=2
endif

source ~/.vim/main.vundle " Vundle init and config

filetype plugin indent on

" Mappings {{{
" ============
let mapleader=","
let maplocalleader="-"

" Use HJKL!!
noremap <Up>    <NOP>
noremap <Down>  <NOP>
noremap <Left>  <NOP>
noremap <Right> <NOP>
inoremap <Up>   <NOP>
inoremap <Down>     <NOP>
inoremap <Left>     <NOP>
inoremap <Right>    <NOP>

source ~/.vim/mappings.vim
" }}}

" General settings {{{
" ====================
set encoding=utf-8 fileencoding=utf-8
set hlsearch
set incsearch
set ignorecase
set smartcase
set wildmenu
" Vim behavior
set autoread
set nobackup
set noswapfile
set clipboard="unnamed"
" Formating
set autoindent
set expandtab "Use spaces instead of tabs
set smarttab
set tabstop=4
set shiftwidth=2

" Filetype settings
source ~/.vim/ftsettings.vim
"}}}

" Interface {{{
" =============
syntax on
set title
set relativenumber
"Show tabs as '▸\\\'
set list
set listchars=tab:▸\

"Statusline options
set laststatus=2
set statusline=%.25F "File path, limited to 25 chars
set statusline+=%m\ %h "Modified '+' and help flags
set statusline+=\ [%{&fenc}/%{&ff}/%Y] "['FileEncode'/'FileFormat'/'FileType']
set statusline+=\ %= "Change aligning to right
set statusline+=%c,%l/%L\ \ %P "Cursor column and line position, and total lines

let time = strftime("%H")

" Set gvim font, according to being on Linux or Windows
if &term =~ "^\(xterm\|screen\)$" || $COLORTERM == "gnome-terminal"
  set t_Co=256
  let g:solarized_termcolors=256
  let g:CSApprox_eterm = 0
  let g:CSApprox_konsole = 0
  let g:CSApprox_use_showrgb = 1

  " Set coloscheme according to current time [Night/Day]
  if time < 05 || time > 18
    set background=dark
    colorscheme hemisu
  else
    set background=light
    colorscheme solarized
  endif
endif
let g:CSApprox_loaded = 0
"}}}
