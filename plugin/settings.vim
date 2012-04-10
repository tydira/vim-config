let mapleader = ','

" No crummy backup/swap files for me
set nobackup
set noswapfile

" Don't update the screen during macros
set lazyredraw

" Extend the history
set history=1000
set undolevels=1000
set undoreload=10000
set undodir=~/.vim/.undodir
set undofile

" Default file types
set ffs=unix,dos,mac

" Fix backspace
set backspace=indent,eol,start

" Enable filetype plugins
filetype plugin on

" Encode documents in UTF-8
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" Styles
colorscheme enviro

" Enable syntax highlighting
syntax on

" Forget word wrapping
set nowrap

" Tabs
set tabstop=2
set shiftwidth=2
set autoindent
set copyindent
set expandtab
set smarttab

" Session options
set sessionoptions+=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages

" Attempt to get equal-sized splits
set equalalways 

" Show matching brace highlights
set showmatch

" Looks good with just =bold
set cursorline

" Always display file location
set ruler

" Use tree-style directory listings
let g:netrw_liststyle=0

" Get rid of the obnoxious underline
let g:netrw_cursorline=0

" Disable netrw history
let g:netrw_dirhistmax=0

" Bash-style tab completion
set wildmode=longest:full
set wildmenu

" Show-as-you-go search
set incsearch
set hlsearch

" Case-insensitive searches unless caps are used
set ignorecase
set smartcase

" Indent folding
set foldmethod=indent
set foldlevel=99

" Bridge vim and system clipboards
set clipboard=unnamed

" Prevent pastes from fuglification
set pastetoggle=<leader>p
