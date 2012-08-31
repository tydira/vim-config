" No crummy backup/swap files for me
set nobackup
set noswapfile

" Don't update the screen during macros
set lazyredraw

" Persistent history
set history=1000
set undolevels=1000
set undoreload=1000
set undodir=~/.vim/.undodir
set undofile

" Default file types
set ffs=unix,dos,mac

" Fix backspace
set backspace=indent,eol,start

" Enable filetype plugins
filetype on
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

" Make edge scrolling more friendly
set scrolloff=6
set sidescrolloff=6

" Tabs
set tabstop=2
set shiftwidth=2
set autoindent
set copyindent
set expandtab
set smarttab

" Attempt to get equal-sized splits
set equalalways 

" Show matching brace highlights
set showmatch

" Looks good with just =bold
set cursorline

" Always display file location
set ruler

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

" Improve vim's default completion
set completeopt=menu,longest,preview

" Beef up completions
let g:SuperTabDefaultCompletionType='<C-n>'
let g:SuperTabLongestEnhanced=1

" NERDTree
let NERDTreeMinimalUI=1
let NERDTreeHighlightCursorline=1
let NERDTreeMouseMode=2
let NERDTreeIgnore=['\.pyc$']
let NERDTreeMapOpenVSplit='v'
let NERDTreeMapOpenSplit='s'
let NERDTreeMapHelp='h'
let NERDTreeMapUpdir='-'
let NERDTreeMapUpdirKeepOpen='_'
let NERDTreeWinSize=26
