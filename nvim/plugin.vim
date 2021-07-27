set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.config/nvim/plugged')
" Autosave
Plug '907th/vim-auto-save'
Plug 'kaicataldo/material.vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tmhedberg/SimpylFold'
Plug 'lervag/vimtex'
" Auto-complete:
" Plug 'Valloric/YouCompleteMe'
Plug 'w0rp/ale'
Plug 'vim-scripts/indentpython.vim'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'majutsushi/tagbar'
call plug#end()

" Ultisnips 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"

" Java-complete2
autocmd FileType java setlocal omnifunc=javacomplete#Complete


