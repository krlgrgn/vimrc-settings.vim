if exists('g:loaded_vimrc_settings') || &compatible
  finish
else
  let g:loaded_vimrc_settings = 'yes'
endif

so '~/.vim/plugged/vimrc-settings.vim/text-editing-config.vim'
