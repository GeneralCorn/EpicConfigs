" Configure Vundle package manager
source ~/.config/nvim/plugin.vim

set encoding=UTF-8

" Mouse Support
" set mouse=a
let g:NERDTreeQuitOnOpen = 1
let g:material_terminal_italics = 1
let g:material_style = 'palenight'

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

":TSInstall <language_to_install>
"Word Count
map <F9> :! echo `detex "%" \| wc -w` words <CR>

"Tagbar
nmap <F7> :TagbarToggle<CR>

" PDF Viewing
map <F8> :! latexmk -shell-escape -pdf "%" <CR>

map <F10> :! pandoc -s "%" -o "%:r".pdf <CR>

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
let g:vimtex_view_method='Preview'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

"ultisnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=["snips"]
" preview
map <F2> :! open -a preview "$(echo "%" \| cut -f 1 -d '.').pdf" & <CR><CR>

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF

set clipboard+=unnamedplus
