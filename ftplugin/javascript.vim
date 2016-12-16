let g:jsx_ext_required = 0 " Allow JSX in normal JS files

let g:neomake_javascript_jshint_maker = {
    \ 'args': ['--verbose'],
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
    \ }
let g:neomake_javascript_enabled_makers = ['eslint']

autocmd! BufWritePost *.js,*.jsx Neomake

inoreab co const
inoreab do document
inoreab lo console.log
inoreab er console.error
inoreab di console.dir
inoreab ex process.exit
