let g:jsx_ext_required = 0 " Allow JSX in normal JS files

let g:neomake_javascript_jshint_maker = {
  \ 'args': ['--verbose'],
  \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
  \ }
let g:neomake_javascript_enabled_makers = ['eslint']

let g:neoformat_enable_javascript = ['prettier']
let g:neoformat_javascript_prettier = {
  \ 'exe': 'prettier',
  \ 'args': ['--no-color', '--trailing-comma all', '--no-semi', '--single-quote', '--stdin'],
  \ 'stdin': 1,
  \ 'no_append': 1,
  \ }

autocmd! BufWritePre *.js,*.jsx Neoformat
autocmd! BufWritePost *.js,*.jsx Neomake

" nno <Space> :FlowJumpToDef<CR>
" nno <C-Space> <C-o>

" inoreab c const
" inoreab doc document
" inoreab log console.log
" inoreab err console.error
" inoreab dir console.dir
" inoreab exit process.exit
