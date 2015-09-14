ab :: :=

let g:go_fmt_command = "goimports"

colorscheme goviro

setlocal noexpandtab

nmap <Leader>mt <Plug>(go-test)
nmap <Leader>mr <Plug>(go-run)

nmap <Leader>gI <Plug>(go-install)
nmap <Leader>gi <Plug>(go-implements)
nmap <Leader>gs <Plug>(go-def-split)
nmap <Leader>gv <Plug>(go-def-vertical)
nmap <Leader>gt <Plug>(go-def-tab)

" Open the standard library
nmap <silent> <Leader>gl :exec("NERDTree" . substitute(system("go env GOROOT"), "\n", "", "") . "/src/")<CR>
