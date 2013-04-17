" Global mappings {{{
" ===================
"}}}

" Normal mode mappings {{{
" ========================
nnoremap ; :
nnoremap H 0
nnoremap L $
nnoremap <leader>n :cnext<cr>
nnoremap <leader>p :cprevious<cr>

"Open vimrc to edit
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"Reload vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
"}}}

" Insert mode mappings {{{
" ========================
"Change last word to uppercase
inoremap <c-u> <esc>viwUea
"}}}

" Visual mode mappings {{{
" ========================
"}}}
