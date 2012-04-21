let mapleader = ','

" Prevent pastes from fuglification
set pastetoggle=<leader>p

" I prefer vertical help most of the time
cnorea help vert help
cnorea hhelp help

" Reload all buffers
cnorea eall windo e

" Shout louder for root
cm w!! w !sudo tee % >/dev/null

" Space to fold and unfold
nn <space> za
vm <space> zf

" Reset hlsearch
nn <leader>/ :let @/ = ""<CR>

" Write a sessionfile
nn <leader>w :mks!<CR>

" Toggle Gundo
nn <leader>h :GundoToggle<CR>

" NERDTree display
nn <leader>f :NERDTreeToggle<CR>
nn <leader>F :NERDTree %

" Tabs maps
nn <C-t> :tabnew 
nn <C-p> :tabprev<CR>
nn <C-n> :tabnext<CR>
nn <silent> <leader>tn :execute 'silent! tabmove ' . tabpagenr()<CR>
nn <silent> <leader>tp :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>

" Split maps
nn <C-w>v :vsplit 
nn <C-w>s :split 
nn <C-w>o :split 

" Movement maps
nn ; ^
nn ' $
nn <C-j> 10j
nn <C-k> 10k
