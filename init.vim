" Configure Vundle package manager
source ~/.config/nvim/plugin.vim

set encoding=UTF-8

" Mouse Support
" set mouse=a

let g:material_terminal_italics = 1
let g:material_theme_style = 'ocean'

colorscheme material

let g:lightline = {
      \ 'colorscheme': 'material',
      \ }

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

"vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

"ultisnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=["snips"]
" preview
map <F2> :! zathura "$(echo "%" \| cut -f 1 -d '.').pdf" & <CR><CR>

setlocal spell
set spelllang=nl,en_gb
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
