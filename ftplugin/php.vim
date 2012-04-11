" Input maps
inoremap /** /**<CR><Space>*<Space><CR>*/<Esc>kA
inoremap /*<Space> /*<Space><Space>*/<Esc>hhi

" Comment maps
nnoremap <leader>s I/* <Esc>
nnoremap <leader>e A */<Esc>
nnoremap <leader><leader>s :s/\/\* //<CR>
nnoremap <leader><leader>e :s/ \*\///<CR>
