" No crummy backup/swap files for me
set nobackup
set noswapfile

" Don't update the screen during macros
set lazyredraw

" Enable syntax highlighting
syntax on

" Persistent history
set history=1000
set undolevels=1000
set undoreload=1000
set undodir=~/.vim/tmp/undo
set undofile

" More natural feeling splits
set splitbelow
set splitright

" Default file types
set ffs=unix,dos,mac

" Encode documents in UTF-8
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" Styles
colorscheme enviro

" Forget word wrapping
set nowrap

" Indentation
set tabstop=2
set shiftwidth=2
set copyindent
set autoindent
set expandtab

" Attempt to get equal-sized splits
set equalalways 

" Show matching brace highlights
set showmatch

" Looks good with just =bold
set cursorline

" Bash-style tab completion
set wildmode=longest,full
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc

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
set completeopt=menu,longest,preview

" Don't show modes
set noshowmode

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
let NERDTreeWinSize=22
let NERDTreeStatusline='File Tree'

" Setup a multiplexer target for slime
let g:slime_target='tmux'

" Have CtrlP ignore this in addition to the wildignore option
let g:ctrlp_custom_ignore='\v[\/]\.(git|hg|svn)$'
let g:ctrlp_max_height=6
let g:ctrlp_use_caching=1
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_cache_dir='~/.vim/tmp/ctrlp'

" Make CtrlP use git's cache to index project files (very fast)
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others'],
    \ 2: ['.hg', 'hg --cwd %s locate -I .'],
  \ },
  \ 'fallback': 'find %s -type f'
\ }


" Close the YCM preview window after we return to normal mode
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_filetype_blacklist={}
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1

let g:gitgutter_sign_added='+'
let g:gitgutter_sign_modified='~'
let g:gitgutter_sign_removed='-'
let g:gitgutter_sign_modified_removed='~'
let g:gitgutter_enabled=0
let g:gitgutter_eager=0

" Default the filetype to text
autocmd BufEnter * if &filetype == "" | setlocal ft=txt | endif
