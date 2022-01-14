" No crummy backup/swap files for me
set nobackup
set nowritebackup
set noswapfile

" Don't require save on buffer switch
set hidden

" Don't update the screen during macros
set lazyredraw

" Persistent history
set history=1000
set undolevels=1000
set undoreload=1000
set undodir=~/.config/nvim/.history
set undofile

" Natural splits
set splitbelow
set splitright

" Default file types
set ffs=unix,dos,mac

" Encode documents in UTF-8
set fenc=utf-8
set termencoding=utf-8

" Forget word wrapping
set nowrap

" Enable mouse support
set mouse=a

" Indentation
set tabstop=2
set shiftwidth=2
set copyindent
set autoindent
set expandtab

" Interface stuff
set termguicolors
colorscheme goshgolly
syntax on

" Attempt to get equal-sized splits
set equalalways 

" Show matching brace highlights
set showmatch
set matchtime=0

" Bash-style tab completion
set wildmode=longest,full

" Short messages, no intro text
set shortmess+=aIc

" Show-as-you-go search
set hlsearch

" Show the result of commands as you type
set inccommand=nosplit

" Case-insensitive searches unless caps are used
set ignorecase
set smartcase

" Get rid of | dividers and ~ buffer fills.
set fillchars+=vert:\ 
set fillchars+=eob:\ 

" Improve vim's default completion
set completeopt=menu,menuone,preview,noselect,noinsert

" Don't show modes
set noshowmode

let g:fzf_history_dir = '~/.config/nvim/.fzf-history'
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
let g:fzf_layout = { 'down': '50%' }

let g:fzf_colors = {
  \ 'fg':      ['fg', 'Normal'],
  \ 'hl':      ['fg', 'Normal'],
  \ 'fg+':     ['fg', 'Constant'],
  \ 'hl+':     ['fg', 'Search'],
  \ 'info':    ['fg', 'Normal'],
  \ 'prompt':  ['fg', 'Normal'],
  \ 'pointer': ['fg', 'Normal'],
  \ 'marker':  ['fg', 'Search'],
  \ 'spinner': ['fg', 'Special'],
  \ 'header':  ['fg', 'Normal']
  \}

" NERDTree
let NERDTreeUseTCD=1
let NERDTreeMinimalUI=1
let NERDTreeHighlightCursorline=0
let NERDTreeMouseMode=2
let NERDTreeIgnore=['\.pyc$']
let NERDTreeMapOpenVSplit='v'
let NERDTreeMapOpenSplit='s'
let NERDTreeMapHelp='h'
let NERDTreeMapUpdir='-'
let NERDTreeMapUpdirKeepOpen='_'
let NERDTreeWinSize=21
let NERDTreeStatusline='Files'

let g:ackprg = 'rg --vimgrep --no-heading --smart-case'

let delimitMate_expand_space=1
let delimitMate_expand_cr=2

" Automatically close location lists
augroup CloseLoclistWindowGroup
  autocmd!
  autocmd QuitPre * if empty(&buftype) | lclose | endif
augroup END

let g:EasyMotion_smartcase=1

let g:node_host_prog = $HOME . '/.local/bin/neovim-node-host'

let g:Illuminate_delay = 0
let g:Illuminate_ftblacklist = ['nerdtree']

" Resize splits automatically
autocmd VimResized * wincmd =
autocmd TabEnter * wincmd =

" Default the filetype to text
autocmd BufEnter * if &filetype == "" | setlocal ft=txt | endif

let &t_SI="\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
let &t_EI="\<Esc>]50;CursorShape=0\x7" " Block in normal mode

" May be needed to enable italic
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
