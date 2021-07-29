" Configure Vundle package manager
source ~/.config/nvim/plugin.vim

set encoding=UTF-8

" Mouse Support
set mouse=a

let g:material_terminal_italics = 1
let g:material_theme_style = 'ocean'

colorscheme material

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

set guifont=DroidSansMono_Nerd_Font:h11

set guifont=DroidSansMono\ Nerd\ Font:h11

if has("persistent_undo")
   let target_path = expand('~/.config/nvim/.undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif

if (has('termguicolors'))
  set termguicolors
endif

" wrap code
set wrap linebreak
" Column Number
set number
set relativenumber

" Tabstop
set tabstop=2

" Word Count
map <F9> :! echo `detex "%" \| wc -w` words <CR>

"Tagbar
nmap <F7> :TagbarToggle<CR>

" PDF Viewing
map <F8> :! latexmk -pdf "%" <CR>

"Undos
nnoremap <F5> :UndotreeToggle<CR>


" Hiding
set conceallevel=2
set shell=/bin/bash

" shift
set shiftwidth=4
" .vimrc
let g:auto_save=1
let g:ale_enabled = 1

autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:SimpylFold_docstring_preview=1

"Completion Navigation
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"au BufNewFile,BufRead *.py
"    \ set tabstop=4 |
"    \ set softtabstop=4 |
"    \ set shiftwidth=4 |
"    \ set textwidth=79 |
"    \ set expandtab |
"    \ set autoindent |
"    \ set fileformat=unix

" preview
map <F2> :! open "$(echo "%" \| cut -f 1 -d '.').pdf" & <CR><CR>
