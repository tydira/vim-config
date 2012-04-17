let mapleader = ','

" Prevent pastes from fuglification
set pastetoggle=<leader>p

" Reload all buffers
cnoreabbrev eall windo e

" Change directory to the focused file's parent
cnoreabbrev cdc lcd %:p:h

" Shout louder for root
cmap w!! w !sudo tee % >/dev/null

" Space to fold and unfold
nnoremap <space> za
vnoremap <space> zf

" Reset hlsearch
noremap <leader>/ :let @/ = ""<CR>

" Easy alignment based on symbols
vnoremap <leader>= :Align 

" Convenient bind for Gundo
noremap <leader>h :GundoToggle<CR>

" Convenient binds for NERDTree
noremap <leader>f :NERDTreeToggle<CR>
noremap <leader>F :NERDTree %

" Tabs maps
noremap <C-t> :tabnew 
noremap <C-p> :tabprev<CR>
noremap <C-n> :tabnext<CR>

" Split maps
noremap <C-w>v :vsplit 
noremap <C-w>s :split 
noremap <C-w>o :split 

" Movement maps
noremap ; ^
noremap ' $
noremap <C-j> 10j
noremap <C-k> 10k
