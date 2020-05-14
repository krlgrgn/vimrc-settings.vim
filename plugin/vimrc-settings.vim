if exists('g:loaded_vimrc_settings') || &compatible
  finish
else
  let g:loaded_vimrc_settings = 'yes'
endif

let path = expand('%:p:h')

exec 'source' path . '../text-editing-config.vim'
