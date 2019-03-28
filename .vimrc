set nocompatible  " set no compatible with old version of VI

syntax enable

set ruler  " show the cursor position all the time
set showmatch  " highlight matching braces
set showmode  " show insert/replace/visual mode
set number relativenumber " show line numbers (relative)
set autoindent  " indent the new line when the previous is indented

" searching
set path+=**  " Search down into subfolders
set wildmenu  " Display all matching files when we tab complete
filetype plugin on  " required for better searching

" color theme
set background=dark
colorscheme solarized
"colorscheme gruvbox
"colorscheme dracula

" remove trailing whitespace when saving.
" to disable it: ":autocmd!"
autocmd BufWrite * silent! %s/[ \t\r]\+$//

" defautocmdlt indentation: indent with 4 whitespaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab  " replace tab with spaces
set colorcolumn=80

autocmd BufNewFile,BufRead *.java
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set colorcolumn=100

autocmd BufNewFile,BufRead *.c
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set colorcolumn=100

autocmd BufNewFile,BufRead *.sh
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set colorcolumn=100

autocmd BufNewFile,BufRead *.xml
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

autocmd BufNewFile,BufRead *.html
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2
