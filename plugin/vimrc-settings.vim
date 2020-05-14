if exists('g:loaded_vimrc_settings') || &compatible
  finish
else
  let g:loaded_vimrc_settings = 'yes'
endif

let home = expand('~/.vim/plugged/vimrc-settings.vim/')

exec 'source' home . 'text-editing-config.vim'
