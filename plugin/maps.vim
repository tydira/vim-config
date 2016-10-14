" All hail leader Comma
let mapleader=','

" Store the path to the kroogs plugin
let $KROOGS=expand('<sfile>:p:h')

" I prefer vertical help most of the time
cnorea h tab help
cnorea vh vert help
cnorea hh help

" Reload all buffers
cnorea eall windo e

" Fold toggles with space
nno <Space> za
vno <Space> za

" Shout louder for root
cm w!! w !sudo tee % >/dev/null

" Quick config access
no <leader>vv :tabnew $VIMRUNTIME<CR>
no <leader>vc :tabnew $MYVIMRC<CR>
no <leader>vk :tabnew $KROOGS<CR>
no <leader>vr :so $MYVIMRC<CR>

" Reset search string
no <leader>/ :let @/=''<CR>

" Write a sessionfile
no <leader>w :Obsession .Session.vim<CR>

" Toggle Gundo
no <leader>u :UndotreeToggle<CR>

" NERDTree display
no <leader>f :NERDTreeToggle<CR>
no <leader>F :NERDTree %

" Tabs
no <C-t> :tabnew 
no <C-p> :tabprev<CR>
no <C-n> :tabnext<CR>

" Split
no <C-w>v :vsplit 
no <C-w>s :split 

" Movement
no <C-j> }
no <C-k> {

" Easier way to leave insert mode
ino <C-@> <Esc>

" Fugitive
no <leader>sc :Gcommit %<CR>
no <leader>sC :Gcommit<CR>
no <leader>sd :Gdiff<CR>
no <leader>ss :Gstatus<CR>
no <leader>sb :Gblame<CR>
no <leader>se :Gedit<CR>
no <leader>sw :Gwrite<CR>
no <leader>sB :Gbrowse<CR>
no <leader>sp :Git push<CR>
no <leader>su :Git pull<CR>
no <leader>sf :Git fetch<CR>

" CtrlP
let g:ctrlp_map='<leader>`'

" Find word under cursor with :Ag
no <leader>k :Ag! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Leader for EasyMotion
let g:EasyMotion_leader_key = "'"

" Ultisnips
let g:UltiSnipsExpandTrigger = '<c-e>'

" Tab completion
ino <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
ino <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
