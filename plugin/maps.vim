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
no <leader>/ :let @/ = ""<CR>

" Write a sessionfile
no <leader>w :mks!<CR>

" Toggle Gundo
no <leader>u :GundoToggle<CR>

" NERDTree display
no <leader>f :NERDTreeToggle<CR>
no <leader>F :NERDTree %

" Tabs maps
no <C-t> :tabnew 
no <C-p> :tabprev<CR>
no <C-n> :tabnext<CR>
no <silent> <leader>tn :execute 'silent! tabmove ' . tabpagenr()<CR>
no <silent> <leader>tp :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>

" Split maps
no <C-w>v :vsplit 
no <C-w>s :split 
no <C-w>o :split 

" Movement maps
no ; ^
no ' $
no <C-h> <Home>
no <C-j> 10j
no <C-k> 10k
