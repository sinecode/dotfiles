set nocompatible  " set no compatible with old version of VI
filetype plugin indent on
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
    Plugin 'NLKNguyen/papercolor-theme'
    Plugin 'sjl/badwolf'
    Plugin 'arcticicestudio/nord-vim'
    Plugin 'acarapetis/vim-colors-github'

    " utilities
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'rhysd/vim-clang-format'

    " python
    Plugin 'psf/black'

    " go
    Plugin 'fatih/vim-go'

call vundle#end()

syntax enable

set ruler  " show the cursor position all the time
set showmatch  " highlight matching braces
set showmode  " show insert/replace/visual mode
set number relativenumber " show line numbers (relative)
set cursorline  "highlight current line

set autoindent  " indent the new line when the previous is indented

" disable all sounds
set belloff=all

" more characters will be sent to the screen for redrawing
set ttyfast

" time waited for key press(es) to complete. It makes for a faster key response
set ttimeout
set ttimeoutlen=50

" disable file backup (if you don't need it)
set nobackup
set noswapfile

" cursor settings
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[5 q"
let &t_EI = "\<esc>[2 q"  " | blinking cursor when in insert mode

" open new horizontal split below
set splitbelow
" open new vertical split to right
set splitright

set path+=**  " Search down into subfolders
set wildmenu  " display all the completitions when tab completing
" stuff to ignore when tab completing
set wildignore=*.o,*.obj,*.class,*.pyc
set wildignore+=*DS_Store*
set wildignore+=*.png,*.jpg,*.gif,*jpeg,*tif,*tiff

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" spell checking
set spelllang=en_us,en,it

" color theme
set background=dark
call togglebg#map("<F5>")  " press F5 to swith bg light/dark
"colorscheme solarized
"colorscheme badwolf
"colorscheme dracula
"colorscheme molokai
"colorscheme gruvbox
colorscheme PaperColor
"colorscheme github

" remove trailing whitespace when saving.
" to disable it: ":autocmd!"
autocmd BufWrite * silent! %s/[ \t\r]\+$//

" disable auto commenting when new line
set formatoptions-=cro

" set shared clipboard
set clipboard^=unnamed,unnamedplus

" default indentation: indent with 2 whitespaces
set tabstop=2  " number of visual spaces per TAB
set softtabstop=2  " number of spaces in TAB when editing
set expandtab  " replace tab with spaces

" move vertically by visual line
nnoremap j gj
nnoremap <Down> gj
nnoremap k gk
nnoremap <Up> gk

""""""""""""""" Python """"""""""""""""""""""

autocmd BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set colorcolumn=80

" autoexecute Black when saving
" autocmd BufWritePre *.py execute ':Black'
" let g:black_linelength = 79

" disable preview window for kite
"set completeopt-=preview

"""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""" Matlab """""""""""""""""""""

autocmd BufNewFile,BufRead *.m
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set colorcolumn=80

"""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""" Java """"""""""""""""""""""

autocmd BufNewFile,BufRead *.java
    \ set colorcolumn=100

"""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""" C/C++ """""""""""""""""""

" set clang-format command
let g:clang_format#command = "clang-format-10"
" auto format when save
let g:clang_format#auto_format = 1
" format accordingly to a .clang_format file
let g:clang_format#detect_style_file = 1
" don't format when a .clang_format file is not found
let g:clang_format#enable_fallback_style = 0

autocmd BufNewFile,BufRead *.h,*.c,*.hpp,*.cc,*.cpp
    \ set colorcolumn=80

"""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""" Shell """"""""""""""""""""

autocmd BufNewFile,BufRead *.sh
    \ set colorcolumn=80

"""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""" GO """""""""""""""""""""

autocmd BufNewFile,BufRead *.go
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4

"""""""""""""""""""""""""""""""""""""""""""""
