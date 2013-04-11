" All hail leader Comma
let mapleader = ','

" Store the path to the kroogs bundle plugin
let $KROOGS = expand('<sfile>:p:h')

" Prevent pastes from fuglification
set pastetoggle=<leader>i

" I prefer vertical help most of the time
cnorea help vert help
cnorea hhelp help

" Reload all buffers
cnorea eall windo e

" Shout louder for root
cm w!! w !sudo tee % >/dev/null

" Quick config access
no <leader>vc :tabnew $MYVIMRC<CR>
no <leader>vk :tabnew $KROOGS<CR>
no <leader>vr :so $MYVIMRC<CR>

" Reset hlsearch
no <leader>/ :let @/ = ""<CR>

" Write a sessionfile
no <leader>w :mks! .Session.vim<CR>

" Toggle Gundo
no <leader>u :GundoToggle<CR>

" NERDTree display
no <leader>f :NERDTreeToggle<CR>
no <leader>F :NERDTree %

" Tabs
no <C-t> :tabnew 
no <C-p> :tabprev<CR>
no <C-n> :tabnext<CR>
no <silent> <leader>tn :execute 'silent! tabmove ' . tabpagenr()<CR>
no <silent> <leader>tp :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>

" Split
no <C-w>v :vsplit 
no <C-w>s :split 

" Movement
no ; ^
no ' $
no <C-h> <Home>

" Turn on automake
no <leader>m :au BufWritePost <buffer> make

" Fugitive
no <leader>gc :Gcommit % -m ""<Left>
no <leader>gd :Gdiff<CR>
no <leader>gs :Gstatus<CR>

" CtrlP
no <leader>p :CtrlP<CR>

