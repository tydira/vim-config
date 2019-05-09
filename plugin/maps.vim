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

" Quick config access
no <leader>vv :tabnew $VIMRUNTIME<CR>
no <leader>vc :tabnew $MYVIMRC<CR>
no <leader>vk :tabnew $KROOGS<CR>
no <leader>vr :so $MYVIMRC<CR>

" Reset search string
no <leader>/ :let @/=''<CR>

" Write a sessionfile
no <leader>w :Obsession .session.vim<CR>

" NERDTree display
no <leader>f :NERDTreeToggle<CR>
no <leader>F :NERDTree %

no <leader>s :Ack! <cword> expand('%:p:r')<CR>

" Tabs
no <C-t> :tabnew 
no <C-n> :tabnext<CR>
no <C-p> :tabprev<CR>

" Split
no <C-w>v :vsplit 
no <C-w>s :split 

" Movement
no <C-j> }
no <C-k> {
no <C-h> <Home>
no <C-l> $

" Quicker escape
ino <C-space> <Esc>
vno <C-space> <Esc>
cno <C-space> <C-c>

" Fugitive
no <leader>gC :vert :Gcommit %<CR>
no <leader>gc :vert :Gcommit<CR>
no <leader>gd :vert :Gdiff<CR>
no <leader>gs :vert :Gstatus<CR>
no <leader>gb :Gblame<CR>
no <leader>ge :Gedit<CR>
no <leader>gw :Gwrite<CR>
no <leader>gB :Gbrowse<CR>
" no <leader>gp :Git push<CR>
no <leader>gp :Dispatch! git push<CR>
no <leader>gu :Git pull<CR>
no <leader>gf :Git fetch<CR>
no <leader>gg :GitGutterToggle<CR>

" no <leader>ga :Git add %:p<CR><CR>
" no <leader>gs :Gstatus<CR>
" no <leader>gc :Gcommit -v -q<CR>
" no <leader>gt :Gcommit -v -q %:p<CR>
" no <leader>gd :Gdiff<CR>
" no <leader>ge :Gedit<CR>
" no <leader>gr :Gread<CR>
" no <leader>gw :Gwrite<CR><CR>
" no <leader>gl :silent! Glog<CR>:bot copen<CR>
" no <leader>gp :Ggrep<Space>
" no <leader>gm :Gmove<Space>
" no <leader>gb :Git branch<Space>
" no <leader>go :Git checkout<Space>
" no <leader>gps :Dispatch! git push<CR>
" no <leader>gpl :Dispatch! git pull<CR>


" CtrlP
let g:ctrlp_map='<Space>'

" Find word under cursor with :Ag
no <leader>k :Ag! "\b<C-R><C-W>\b"<CR>:cw<CR>

" Leader for EasyMotion
let g:EasyMotion_leader_key = "'"
nmap s <Plug>(easymotion-s)
vmap s <Plug>(easymotion-s)

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Ultisnips
let g:UltiSnipsExpandTrigger = '<c-e>'

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

map *   <Plug>(asterisk-*)
map #   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)

" Tab completion
ino <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
ino <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

" Buffer shortcuts
" map gn :bn<cr>
" map gp :bp<cr>
map gb :b#<cr>

" Quickfix
map gn :cn<cr>
map gp :cp<cr>

" Show syntax highlighting groups for word under cursor
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

no <leader>h :call <SID>SynStack()<CR>
no <leader>hh :so $VIMRUNTIME/syntax/hitest.vim<CR>
