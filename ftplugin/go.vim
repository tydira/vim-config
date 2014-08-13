let g:go_fmt_autosave=0

ab : :=

setlocal noexpandtab
setlocal shiftwidth=2
setlocal tabstop=2

nnoremap gd :GoDef<CR>
nnoremap K :GoDoc<CR>
nnoremap = :GoFmt<CR>
nnoremap <leader>mt :GoTest<CR>
nnoremap <leader>mr :GoRun<CR>

nmap <Leader>dd <Plug>(go-def)
nmap <Leader>ds <Plug>(go-def-split)
nmap <Leader>dv <Plug>(go-def-vertical)
nmap <Leader>dt <Plug>(go-def-tab)
