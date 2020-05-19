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
set undodir=~/.tmp/vim-undo
set undofile

" More natural feeling splits
set splitbelow
set splitright

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
set termguicolors
colorscheme goshgolly
syntax on

" Attempt to get equal-sized splits
set equalalways 

" Highlight the cursor line when it's enabled
" set cursorline

" Show matching brace highlights
set showmatch
set matchtime=0

" Bash-style tab completion
set wildmode=longest,full
set wildignore+=,*.so,*.zip,*.pyc,
set wildignore+=*.a,*.o
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png
set wildignore+=.DS_Store,.git,.hg,.svn
set wildignore+=*~,*.swp,*.tmp

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

let g:ackprg = 'rg --vimgrep --no-heading --smart-case'

let g:ctrlp_max_height=6
" let g:ctrlp_use_caching=1
let g:ctrlp_custom_ignore = '\v[\/]node_modules'
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let delimitMate_expand_space=1
let delimitMate_expand_cr=2

" Automatic completion
autocmd BufEnter * call ncm2#enable_for_buffer()
let g:ncm2#complete_length=[[1,2],[7,3]]

let g:vim_json_syntax_conceal=1

let g:ale_list_window_size=6
let g:ale_completion_enabled=0
let g:ale_sign_column_always=1
let g:ale_lint_on_text_changed='normal'
" let g:ale_linters_explicit=1

" Automatically close location lists
augroup CloseLoclistWindowGroup
  autocmd!
  autocmd QuitPre * if empty(&buftype) | lclose | endif
augroup END

let g:ale_sign_error='‣'
let g:ale_sign_warning='・'

" Stop fighting with ALE. Doesn't work in the TS ftplugin for some reason.
let g:nvim_typescript#diagnostics_enable=0
let g:nvim_typescript#quiet_startup=1

let g:asterisk#keeppos=1

let g:EasyMotion_smartcase=1

let g:gitgutter_enabled=0

let g:node_host_prog = $HOME . '/.local/bin/neovim-node-host'

" Resize splits automatically
autocmd VimResized * wincmd =
autocmd TabEnter * wincmd =

" Default the filetype to text
autocmd BufEnter * if &filetype == "" | setlocal ft=txt | endif

let &t_SI="\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
let &t_EI="\<Esc>]50;CursorShape=0\x7" " Block in normal mode

" May be needed to enable italics in vim
" let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

