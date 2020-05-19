let g:ale_linters = {'rust': ['rls']}
let g:ale_fixers = {'rust': ['rustfmt']}

let g:ale_fix_on_save = 1
let g:ale_set_quickfix = 1

" Why the hell doesn't ALE lint no matter what I do?

let g:ale_rust_rls_toolchain = 'stable'
let g:ale_rust_rls_executable = '/Users/justin/.cargo/bin/rls'

let g:racer_experimental_completer = 1

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gv <Plug>(rust-def-vertical)
au FileType rust nmap gk <Plug>(rust-doc)
