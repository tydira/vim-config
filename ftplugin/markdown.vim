setlocal spell spelllang=en_us

let b:ale_command_wrapper = 'npx'

let b:ale_linters = ['write-good']
let b:ale_fixers = ['prettier']

let g:ale_fix_on_save = 1
