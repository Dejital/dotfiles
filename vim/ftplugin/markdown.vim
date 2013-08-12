setlocal formatoptions+=twc
setlocal tw=70  " max line length
setlocal wrap

" Set undo points by sentence
inoremap <buffer> . .<C-G>u|
inoremap <buffer> ! !<C-G>u|
inoremap <buffer> ? ?<C-G>u|
