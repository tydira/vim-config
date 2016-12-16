" No crummy backup/swap files for me
set nobackup
set nowritebackup
set noswapfile

" Don't update the screen during macros
set lazyredraw

" Persistent history
set history=1000
set undolevels=1000
set undoreload=1000
set undodir=~/.tmp/vim-undo
set undofile

" More natural feeling splits
set splitbelow
set splitright

" Enable basic folding
" set foldmethod=syntax

" Start with open folds.
autocmd BufReadPost * normal! zR

" Default file types
set ffs=unix,dos,mac

" Encode documents in UTF-8
set fenc=utf-8
set termencoding=utf-8

" Use system clipboard
" set clipboard=unnamed

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
set background=dark
colorscheme goshgolly
syntax on

" Attempt to get equal-sized splits
set equalalways 

" Highlight the cursor line when it's enabled
set cursorline

" Show matching brace highlights
set showmatch
set matchtime=0

" Bash-style tab completion
set wildmode=longest,full
set wildignore+=*/tmp/*,*.so,*.zip,*.pyc,node_modules/*
set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp

" Short messages, no intro text
set shortmess+=aI

" Show-as-you-go search
set hlsearch

" Case-insensitive searches unless caps are used
set ignorecase
set smartcase

" There's a space at the end of the next line!
set fillchars=vert:\ 

" Improve vim's default completion
set completeopt=menu,longest

" Don't show modes
set noshowmode

" NERDTree
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

" Change some vim-gist defaults
let g:gist_open_browser_after_post=1
let g:gist_post_private=1

" Have CtrlP ignore this in addition to the wildignore option
let g:ctrlp_max_height=6
let g:ctrlp_use_caching=1

" Make CtrlP use git's cache to index project files (very fast)
let g:ctrlp_user_command={
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
    \ 2: ['.hg', 'hg --cwd %s locate -I .'],
  \ },
  \ 'fallback': 'ag %s -l --nocolor -g ""',
  \ 'ignore': 1
\ }

let delimitMate_expand_space=1
let delimitMate_expand_cr=2

let g:deoplete#enable_at_startup=1
let g:deoplete#auto_complete_delay=50
let g:deoplete#auto_complete_start_length=3
" call deoplete#custom#set('_', 'matchers', ['matcher_head'])

let g:vim_json_syntax_conceal=1

let g:asterisk#keeppos=1

let g:EasyMotion_smartcase=1

" Resize splits automatically
autocmd VimResized * wincmd =
autocmd TabEnter * wincmd =

" Default the filetype to text
autocmd BufEnter * if &filetype == "" | setlocal ft=txt | endif

let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
