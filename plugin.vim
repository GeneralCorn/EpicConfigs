set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.config/nvim/plugged')
" Autosave
Plug '907th/vim--save'
Plug 'kaicataldo/material.vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tmhedberg/SimpylFold'
Plug 'lervag/vimtex'
" Auto-complete:
" Plug 'Valloric/YouCompleteMe'
Plug 'codota/tabnine-vim'
Plug 'w0rp/ale'
Plug 'vim-scripts/indentpython.vim'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'jiangmiao/-pairs'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'majutsushi/tagbar'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanosis/vim-devicons'
Plug 'mhinz/vim-startify' 
call plug#end()

" Ultisnips 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"



