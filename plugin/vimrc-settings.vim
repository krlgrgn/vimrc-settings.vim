if exists('g:loaded_vimrc_settings') || &compatible
  finish
else
  let g:loaded_vimrc_settings = 'yes'
endif

let home = expand('~/.vim/plugged/vimrc-settings.vim/')

exec 'source' home . 'text-editing-config.vim'
exec 'source' home . 'deoplete-config.vim'
exec 'source' home . 'ale-config.vim'
exec 'source' home . 'which-key-config.vim'
