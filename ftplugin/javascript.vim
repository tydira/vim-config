let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:javascript_plugin_flow = 1 " Highlight Flow
let g:neoformat_enable_javascript = ['prettier']
let g:neoformat_javascript_prettier = {
  \ 'exe': 'prettier',
  \ 'args': ['--no-color', '--trailing-comma all', '--no-semi', '--single-quote', '--stdin'],
  \ 'stdin': 1,
  \ 'no_append': 1,
  \ }

autocmd! BufWritePre *.js,*.jsx Neoformat
