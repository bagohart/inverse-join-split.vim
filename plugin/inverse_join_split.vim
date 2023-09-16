" Reload guard {{{
if &compatible || exists("g:loaded_inverse_join_split")
    finish
endif
let g:loaded_inverse_join_split = 1
" }}}

" force reload autoloading hack {{{
" call inverse_join_split#Baaad()
" }}}

" Plug mappings {{{
nnoremap <silent><expr> <Plug>(inverse-join) inverse_join_split#InverseJoin()
nnoremap <silent><expr> <Plug>(inverse-split) inverse_join_split#InverseSplit()
" }}}

" suggested mappings {{{
" nmap gJ <Plug>(inverse-join)
" nmap gS <Plug>(inverse-split)
" }}}
