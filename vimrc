set nocompatible
filetype off

"-----------------------------------------------------------------------------
" Pathogen: http://www.vim.org/scripts/script.php?script_id=2332
" This needs to occur after filetype off and before filetype plugin on
"-----------------------------------------------------------------------------
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on
filetype plugin indent on

"-----------------------------------------------------------------------------
" Styling
"-----------------------------------------------------------------------------

" 256 color terminal with iTerm
set t_Co=256

" Solarized color scheme for vim and gvim
colorscheme solarized 
set background=dark

" Toggle light and dark with \bg
call togglebg#map("<leader>bg") 

"-----------------------------------------------------------------------------
" Encoding and general usability
"-----------------------------------------------------------------------------

set encoding=utf-8
set scrolloff=3
set visualbell
set ruler
set backspace=indent,eol,start
set display=lastline

" Enable mouse in all modes
set mouse=a

" Persistent undo
if v:version >= 703
  set undofile
  set undodir=~/.vim/tmp,~/.tmp,~/tmp,~/var/tmp,/tmp
endif

"-----------------------------------------------------------------------------
" Search, highlight, spelling, etc.
"-----------------------------------------------------------------------------

" Improved searching
set ignorecase
set smartcase
set incsearch

" Store temporary files in a central location
set backupdir=~/.vim/tmp,~/.tmp,~/tmp,~/var/tmp,/tmp
set directory=~/.vim/tmp,~/.tmp,~/tmp,~/var/tmp,/tmp

" Don't make backups of temporary files (crontab in particular)
set backupskip=/tmp/*,/private/tmp/*

" If a file has been changed outside of Vim, reload it inside of Vim
set autoread

"-----------------------------------------------------------------------------
" Spacing
"-----------------------------------------------------------------------------

set autoindent
set smartindent 
set tabstop=2 shiftwidth=2 expandtab

"-----------------------------------------------------------------------------
" Buffers
"-----------------------------------------------------------------------------

" Let me switch buffers with unsaved changes
set hidden

" use <Ctrl>+h/<Ctrl>+l to move back/forth through files:
nmap <C-L> :bnext<CR>
nmap <C-H> :bprev<CR>

" use <Ctrl>+j/<Ctrl>+k to move up/down through split windows
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k

" Ctrl-E to switch between 2 last buffers
nmap <C-E> :b#<CR>

"-----------------------------------------------------------------------------
" Folds and folding
"-----------------------------------------------------------------------------

set foldcolumn=0
set foldmethod=marker "alternatives: indent, syntax, marker

"-----------------------------------------------------------------------------
" Keymap stuff
"-----------------------------------------------------------------------------

nnoremap <Space> :

" Go up and down screen lines instead of actual lines
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj

" Don't use Ex mode, use Q for formatting
map Q gq

" Access .vimrc with \vi
nmap <silent> <leader>vi :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" OS X friendly copy and paste
nmap <C-v> :r!pbpaste<CR>
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" Run current file if it has a shebang <F4> {{{
" From: http://news.ycombinator.com/item?id=2908094
function! <SID>CallInterpreter()
    if match(getline(1), '^\#!') == 0
        let l:interpreter = getline(1)[2:]
        exec ("!".l:interpreter." %:p")
    else
        echohl ErrorMsg | echo "Err: No shebang present in file, canceling execution" | echohl None
    endif
endfun
nmap <leader>sb :call <SID>CallInterpreter()<CR> 
" }}}

" Toggle line numbering modes \rn {{{
" Default to relativenumber in newer vim, otherwise regular numbering
" From: http://news.ycombinator.com/item?id=2908094
if v:version >= 703
    set relativenumber
    let s:relativenumber = 0
    function! <SID>ToggleRelativeNumber()
        if s:relativenumber == 0
            set number
            let s:relativenumber = 1
        elseif s:relativenumber == 1
            set relativenumber
            let s:relativenumber = 2
        else
            set norelativenumber
            let s:relativenumber = 0
        endif
    endfunction
    map <silent> <leader>rn :call <SID>ToggleRelativeNumber()<CR>
else
    set number
endif
" }}}
