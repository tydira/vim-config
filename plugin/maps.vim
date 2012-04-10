" Reload all buffers
cmap eall windo e

" Change directory to the focused file's pwd
cmap cdc lcd %:p:h

" Shout louder for root
cmap w!! w !sudo tee % >/dev/null

" Make space also useful for creating, opening and closing folds
nnoremap <space> za
vnoremap <space> zf

" Reset hlsearch
noremap <leader>/ :let @/ = ""<CR>

" Easy alignment based on symbols
vnoremap <leader>= :Align 

" Convenient key for Gundo
noremap <leader>h :GundoToggle<CR>

" Tabs maps
noremap <C-t> :tabnew 
noremap <C-p> :tabprev<CR>
noremap <C-n> :tabnext<CR>

" Split maps
noremap <C-w>v :vsplit 
noremap <C-w>s :split 
noremap <C-w>o :split 

" Movement maps
noremap <C-h> <Home>
noremap <C-j> 10j
noremap <C-k> 10k
noremap ; ^
noremap ' $

" Input maps
inoremap /** /**<CR><Space>*<Space><CR>*/<Esc>kA
inoremap /*<Space> /*<Space><Space>*/<Esc>hhi

" Comment maps
nnoremap <leader>s I/* <Esc>
nnoremap <leader>e A */<Esc>
nnoremap <leader><leader>s :s/\/\* //<CR>
nnoremap <leader><leader>e :s/ \*\///<CR>

" Turns on/off cursorcolumn
""MapToggle <leader>c cursorcolumn

" Allow easy disabling of long lines highlights
""map <leader>l <Esc>:call ToggleLongLinesHi()<CR>
