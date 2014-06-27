" All hail leader Comma
let mapleader=','

" Store the path to the kroogs bundle plugin
let $KROOGS=expand('<sfile>:p:h')

" Prevent pastes from fuglification
set pastetoggle=<leader>i

" I prefer vertical help most of the time
cnorea h tab help
cnorea vh vert help
cnorea hh help

" Reload all buffers
cnorea eall windo e

" Shout louder for root
cm w!! w !sudo tee % >/dev/null

" Toggle for line number display
no <leader>l :set nu!<CR>

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

" Tabularize
no <leader>tt :execute ':Tabularize /' . getline(".")[col(".")-1]<CR>
no <leader>t= :Tabularize /=<CR>
no <leader>t: :Tabularize /:<CR>
no <leader>t:: :Tabularize /:\zs<CR>
no <leader>t, :Tabularize /,<CR>
no <leader>t<Bar> :Tabularize /<Bar><CR>

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
no <C-g> <Home>
no <C-h> ^
no <C-l> $
no <C-j> }
no <C-k> {

" Easier way to leave insert mode
ino <C-@> <Esc>

" Dispatch
no <leader>M :Dispatch!<CR>
no <leader>m :Dispatch<CR>

" Fugitive
no <leader>sc :Gcommit %<CR>
no <leader>sC :Gcommit<CR>
no <leader>sd :Gdiff<CR>
no <leader>ss :Gstatus<CR>

" GitGutter
no <leader>sg :GitGutterToggle<CR>

"no <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" CtrlP
let g:ctrlp_map='<leader>`'
no <leader>~ :CtrlPClearCache<CR>:CtrlP<CR>

" Leader for EasyMotion
let g:EasyMotion_leader_key = "'"
