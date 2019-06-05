set signcolumn=yes

let g:polyglot_disabled = ['typescript']

let b:ale_command_wrapper = 'npx'

let b:ale_fixers = ['prettier']
let b:ale_linters = ['eslint', 'tsserver']

let b:ale_fix_on_save = 1
let b:ale_set_balloons = 1

no gd :TSDef<CR>
