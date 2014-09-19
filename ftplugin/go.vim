ab :: :=

let g:go_fmt_command = "goimports"

colorscheme goviro

setlocal noexpandtab
setlocal shiftwidth=2
setlocal tabstop=2

nnoremap <Leader>mt :GoTest<CR>
nnoremap <Leader>mr :GoRun<CR>

nnoremap <silent> gd :<C-u>call Godef()<CR>
nnoremap <silent> gds :sp <CR>:<C-u>call Godef()<CR>
nnoremap <silent> gdv :vsp <CR>:<C-u>call Godef()<CR>
nnoremap <silent> gdt :tab split <CR>:<C-u>call Godef()<CR>
