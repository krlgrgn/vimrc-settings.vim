" which key config
set timeoutlen=500

call which_key#register('<Space>', "g:which_key_map")

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Define prefix dictionary
let g:which_key_map =  {}

let g:which_key_map['f'] = {
      \ 'name' : '+find' ,
      \ '/' : [':History/'     , 'history (:History/)'],
      \ ';' : [':Commands'     , 'commands (:Commands)'],
      \ 'a' : [':Ag'           , 'text Ag (:Ag)'],
      \ 'b' : [':BLines'       , 'current buffer (:BLines)'],
      \ 'B' : [':Buffers'      , 'open buffers (:Buffers)'],
      \ 'c' : [':Commits'      , 'commits (:Commits)'],
      \ 'C' : [':BCommits'     , 'buffer commits (:BCommits)'],
      \ 'f' : [':Files'        , 'files (:Files)'],
      \ 'g' : [':GFiles'       , 'git files (:GFiles)'],
      \ 'G' : [':GFiles?'      , 'modified git files (:GFiles?)'],
      \ 'h' : [':History'      , 'file history (:History)'],
      \ 'H' : [':History:'     , 'command history (:History:)'],
      \ 'l' : [':Lines'        , 'lines (:Lines)'] ,
      \ 'm' : [':Marks'        , 'marks (:Marks)'] ,
      \ 'M' : [':Maps'         , 'normal maps (:Maps)'] ,
      \ 'p' : [':Helptags'     , 'help tags (:Helptags)'] ,
      \ 'P' : [':Tags'         , 'project tags (:Tags)'],
      \ 's' : [':Snippets'     , 'snippets (:Snippets)'],
      \ 'S' : [':Colors'       , 'color schemes (:Colors)'],
      \ 't' : [':Rg'           , 'text Rg (:Rg)'],
      \ 'T' : [':BTags'        , 'buffer tags (:BTags)'],
      \ 'w' : [':Windows'      , 'search windows (:Windows)'],
      \ 'y' : [':Filetypes'    , 'file types (:Filetypes)'],
      \ 'z' : [':FZF'          , 'FZF (:FZF)'],
      \ }

let g:which_key_map['g'] = {
      \ 'name' : '+git' ,
      \ 's' : [':Gstatus'     , 'status (:Gstatus)'],
      \ 'b' : [':Gblame'     , 'blame (:Gblame)'],
      \ 'B' : [':Gbrowse'     , 'browse (:Gbrowse)'],
      \ 'l' : [':Commits'      , 'commits (:Commits)'],
      \ 'L' : [':BCommits'     , 'buffer commits (:BCommits)'],
      \ 'p': {
            \ 'name' : '+push',
            \ 'p' : [':Gpush', 'push (:Gpush)']      ,
            \ 'f' : [':Gpush -f' , 'push --force (:Gpush -f)'],
            \ },
      \ }
