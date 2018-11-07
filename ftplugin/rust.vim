let g:ale_linters = {'rust': ['rls']}
let b:ale_fixers = ['rustfmt']
let g:ale_fix_on_save = 1
let g:ale_rust_cargo_use_check = 1
let g:ale_set_quickfix = 1

let g:racer_cmd = "$HOME/.cargo/bin/racer"
let g:racer_experimental_completer = 1

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gv <Plug>(rust-def-vertical)
au FileType rust nmap gk <Plug>(rust-doc)
