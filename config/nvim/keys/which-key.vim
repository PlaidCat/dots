let g:which_key_timeout = 100

let g:mapleader = "\<Space>"

call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>

vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
