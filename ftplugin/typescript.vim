set signcolumn=yes

let b:ale_fixers = ['prettier']
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_fix_on_save = 1
let g:polyglot_disabled = ['typescript']

no gd :TSDef<CR>
