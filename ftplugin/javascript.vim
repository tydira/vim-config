let g:jsx_ext_required = 0
let g:javascript_plugin_flow = 1
let g:flow#showquickfix = 0
let g:flow#enable = 0
let g:neoformat_enable_javascript = ['prettier']
let g:neoformat_javascript_prettier = {
  \ 'exe': 'prettier',
  \ 'args': ['--no-color', '--trailing-comma all', '--single-quote', '--parser babylon', '--stdin'],
  \ 'stdin': 1,
  \ 'no_append': 1,
  \ }

autocmd! BufWritePre *.js,*.mjs,*.jsx Neoformat

ab die! process.exit()
ab log! console.log(
ab warn! console.warn(
