set nocompatible  "Kill vi-compatibility
set encoding=utf-8 "UTF-8 character encoding

" Indent 2 spaces
set tabstop=2  "2 space tabs
set shiftwidth=2  "2 space shift
set softtabstop=2  "Tab spaces in no hard tab mode
set expandtab  " Expand tabs into spaces
set autoindent  "autoindent on new lines

set showmatch  "Highlight matching braces

set ruler  "Show bottom ruler

set equalalways  "Split windows equal size

set formatoptions=crqj  "Enable comment line auto formatting
set textwidth=79

set title  "Set window title to file
" set hlsearch  "Highlight on search
set nohlsearch  "No highlight on search
set ignorecase  "Search ignoring case
set smartcase  "Search using smartcase
set incsearch  "Start searching immediately

set scrolloff=5  "Never scroll off
set wildmode=longest,list  "Better unix-like tab completion
" set clipboard=unnamed  "Copy and paste from system clipboard
set lazyredraw  "Don't redraw while running macros (faster)
set wrap  "Visually wrap lines
set linebreak  "Only wrap on 'good' characters for wrapping
set backspace=indent,eol,start  "Better backspacing
set ttyfast  "Speed up vim
set nostartofline "Vertical movement preserves horizontal position
set nojoinspaces " doesn't add a second padding space after a sentence

" Strip whitespace from end of lines when writing file
autocmd BufWritePre * :%s/\s\+$//e

" Syntax highlighting and color scheme
syntax on
filetype plugin indent on
colorscheme desert
set number

" Replace auto-complete keys
inoremap <C-Space> <C-p>
inoremap <Nul> <C-p>

" Enable spell-checking for text, tex, and markdown files only
autocmd FileType tex,text,markdown :set spell spelllang=en_us

" Toggle paste mode with Ctrl+p in insert and normal mode
" NOTE: Doesn't disable paste mode from insert mode when already in paste mode
inoremap <c-p> <esc>:set paste!<cr>i
nnoremap <c-p> :set paste!<cr>
