set signcolumn=yes

let b:ale_fix_on_save = 1

let b:ale_command_wrapper = 'npx'

let b:ale_fixers = ['prettier']
let b:ale_linters = ['tsserver', 'eslint']

let b:ale_javascript_eslint_options = '--cache'
let b:ale_javascript_eslint_suppress_eslintignore = 1
let b:ale_javascript_eslint_suppress_missing_config = 1

no gd :ALEGoToDefinition<CR>
no gds :ALEGoToDefinitionInSplit<CR>
no gdv :ALEGoToDefinitionInVSplit<CR>
no gdt :ALEGoToDefinitionInTab<CR>

no gD :ALEGoToTypeDefinition<CR>
no gDs :ALEGoToTypeDefinitionInSplit<CR>
no gDv :ALEGoToTypeDefinitionInVSplit<CR>
no gDt :ALEGoToTypeDefinitionInTab<CR>
