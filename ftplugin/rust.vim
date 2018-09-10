autocmd! BufWritePre *.rs Neoformat

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gv <Plug>(rust-def-vertical)
au FileType rust nmap gk <Plug>(rust-doc)
