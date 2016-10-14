let g:syntastic_javascript_checkers = ['eslint']
let g:used_javascript_libs = 'underscore,angularjs,react,jquery'
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

let g:neomake_javascript_jshint_maker = {
    \ 'args': ['--verbose'],
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
    \ }
let g:neomake_javascript_enabled_makers = ['eslint']
