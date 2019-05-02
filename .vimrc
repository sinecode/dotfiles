set nocompatible  " set no compatible with old version of VI
filetype off  " required by Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    " themes
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'dracula/vim'
    Plugin 'tomasr/molokai'
    Plugin 'morhetz/gruvbox'

    " utilities
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

syntax enable

set ruler  " show the cursor position all the time
set showmatch  " highlight matching braces
set showmode  " show insert/replace/visual mode
set number relativenumber " show line numbers (relative)
set autoindent  " indent the new line when the previous is indented

" disable all sounds
set belloff=all

" cursor settings
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[5 q"
let &t_EI = "\<esc>[2 q"  " | blinking cursor when in insert mode

set path+=**  " Search down into subfolders
set wildmenu  " display all the completitions when tab completing
" stuff to ignore when tab completing
set wildignore=*.o,*.obj,*.class,*.pyc
set wildignore+=*DS_Store*
set wildignore+=*.png,*.jpg,*.gif,*jpeg

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" spell checking
set spelllang=en_us,en,it

" color theme
set background=dark
colorscheme solarized
"colorscheme dracula
"colorscheme molokai
"colorscheme gruvbox

" remove trailing whitespace when saving.
" to disable it: ":autocmd!"
autocmd BufWrite * silent! %s/[ \t\r]\+$//

" disable auto commenting when new line
autocmd BufNewFile,BufRead * setlocal formatoptions+=cqn

" default indentation: indent with 4 whitespaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab  " replace tab with spaces

autocmd BufNewFile,BufRead *.py
    \ set textwidth=80 |
    \ set colorcolumn=+1

autocmd BufNewFile,BufRead *.md
    \ set textwidth=80 |
    \ set colorcolumn=+1

autocmd BufNewFile,BufRead *.java
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=100 |
    \ set colorcolumn=+1

autocmd BufNewFile,BufRead *.c
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=100 |
    \ set colorcolumn=+1

autocmd BufNewFile,BufRead *.h
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=100 |
    \ set colorcolumn=+1

autocmd BufNewFile,BufRead *.cpp
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=100 |
    \ set colorcolumn=+1

autocmd BufNewFile,BufRead *.hpp
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=100 |
    \ set colorcolumn=+1

autocmd BufNewFile,BufRead *.sh
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=100 |
    \ set colorcolumn=+1

autocmd BufNewFile,BufRead *.xml
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

autocmd BufNewFile,BufRead *.html
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

autocmd BufNewFile,BufRead *.json
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2
