" deoplete config
" Requirements for deoplete to work with vim 8:
" run: python3 -m pip install pynvim

if exists('g:loaded_deoplete_config') || &compatible
  finish
else
  let g:loaded_deoplete_config = 'yes'
endif

if has('pythonx')
  set pyxversion=3
endif

inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

let g:deoplete#enable_at_startup = 1
