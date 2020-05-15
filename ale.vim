" ale
" Keep a gutter open so it doesn't fuck up the view when running a linter
" autocmd BufEnter * sign define dummy
" autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
let g:ale_linters = {
\ 'ruby': ['rubocop', 'ruby'],
\ 'elixir': [],
\}
" fix rubucop executor
let g:ale_ruby_rubocop_executable = 'bundle'
" keep the gutter open always
let g:ale_sign_column_always = 1
" stops underlining the part where the error is. it breaks syntax highlighting.
let g:ale_set_highlights = 0

let g:ale_fixers = {'ruby': ['rubocop']}
