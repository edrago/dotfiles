let g:CSApprox_loaded = 0
set langmenu=en_US.UTF-8
set guioptions-=T

" Set gvim font, according to being on Linux or Windows
if has("gui_gtk2") || has("gui_gtk3")
  set guifont=Bitstream\ Vera\ Sans\ Mono\ 9,\ DejaVu\ Sans\ Mono\ 9
else
  set guifont=Consolas:h9,\ DejaVu\ Sans\ Mono:h9
endif

" Set coloscheme according to current time [Night/Day]
if time < 05 || time > 18
  set background=dark
  colorscheme liquidcarbon
else
  set background=light
  colorscheme flatui
endif
