" ==============================================================================
" vim-plug block
" ==============================================================================
call plug#begin('~/.vim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'tpope/vim-fugitive'
call plug#end()


" ==============================================================================
" plugin settings
" ==============================================================================

" vim-airline settings
" ------------------------------------------------------------------------------

set hidden

nmap <leader>l :bnext<cr>
nmap <leader>h :bprevious<cr>
nmap <leader>q :bp<bar> bd #<cr>

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.colnr = '  cn:'
let g:airline_symbols.branch = ''


" ==============================================================================
" vim settings
" ==============================================================================

" general settings
" ------------------------------------------------------------------------------
if has("syntax")
    syntax on
endif

set autoindent nu ts=4 sw=4 mouse=a cindent
au Bufenter *.js set et sw=2 ts=2

au BufReadPost *
\ if line("'\"")>0&&line("'\"")<=line("$") && &ft !~ "commit" |
\ exe "norm g`\"" |
\endif

set laststatus=2

set encoding=utf-8

" moves
" ------------------------------------------------------------------------------
inoremap jk <esc>

map Wk <C-w><up>
map Wj <C-w><down>
map Wh <C-w><left>
map Wl <C-w><right>

" color
" ------------------------------------------------------------------------------
colorscheme desert

set background=dark
highlight Normal 		ctermfg=255
"white
highlight Comment 		ctermfg=246
"grey
highlight LineNr 		ctermfg=250
"grey
highlight Statement		ctermfg=228
"yellow
highlight PreProc 		ctermfg=111
"paleblue
highlight Type 			ctermfg=157
"light green
highlight Identifier 	ctermfg=123 cterm=NONE
"cyan
highlight Constant 		ctermfg=209
"orange
highlight Special 		ctermfg=177
"pink
