if exists('g:loaded_vimrc_settings') || &compatible
  finish
else
  let g:loaded_vimrc_settings = 'yes'
endif

let home = expand('~/.vim/plugged/vimrc-settings.vim/')

" Leader mapping.
let mapleader = "\<Space>"

exec 'source' home . 'text-editing.vim'
exec 'source' home . 'deoplete.vim'
exec 'source' home . 'ale.vim'
exec 'source' home . 'which-key.vim'
exec 'source' home . 'nerdtree.vim'

" Auto read changed file
set autoread

set backspace=indent,eol,start

set wildmenu

" Searching
set hlsearch
set incsearch
set showmatch
set number

set showcmd " Show command in status line.
set showmode " Show current mode.
set modeline            " Enable modeline.
" set esckeys             " Cursor keys in insert mode.

" More natural splits
set splitbelow  " Horizontal split below current.
set splitright  " Vertical split to right of current.

set encoding=utf8

set background=dark

colorscheme onedark

" Changes file format to unix automatically.
set ff=unix

filetype indent on
filetype plugin on

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

set hidden

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


" Key mappings
map <C-o> :NERDTreeToggle<CR>

" text search
cnoreabbrev Ack Ack!

" rubocop
let g:vimrubocop_rubocop_cmd = 'bundle exec rubocop '
