if exists('g:loaded_text_editing_config') || &compatible
  finish
else
  let g:loaded_text_editing_config = 'yes'
endif

" Enable syntax highlighting
syntax enable

" syntax on

" File type detection
filetype on

" Highlight the line the cursor is on.
set cursorline

" No line wrapping
set nowrap

" No beeps.
set noerrorbells

" Indentation
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set autoindent

" Set line-spacing to minimum.
" set linespace=0

" Prevents inserting two spaces after punctuation on a join (J)
set nojoinspaces

if has("unix")
  if system("uname") == "Darwin\n"
    " Do Mac stuff here
    set guifont=Monaco:h12
  else
    set gfn=Mono\ 9
  endif
endif

" Remove any trailing white spaces
autocm BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" High light lines > 80 chars long.
set colorcolumn=81

" Add closing character and move cursor in between
inoremap <> <><Left>
inoremap () ()<Left>
inoremap {} {}<Left>
inoremap [] []<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap `` ``<Left>
