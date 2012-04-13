let mapleader = ','

command WQ wq
command Wq wq
command W w
command Q q

" Easy toggle maps
function MapToggle(key, opt)
  let cmd = ':set '.a:opt.'! \| set '.a:opt."?\<CR>"
  exec 'nnoremap '.a:key.' '.cmd
  ""exec 'inoremap '.a:key." \<C-O>".cmd
endfunction
command -nargs=+ MapToggle call MapToggle(<f-args>)

MapToggle <leader>c cursorcolumn

" Toggle long line highlights
function ToggleLongLineHi()
    if exists("b:overlengthhi") && b:overlengthhi
        highlight clear LongLines
        let b:overlengthhi = 0
    else
        highlight LongLines ctermfg=red cterm=underline
        match LongLines /\%80v.\+/
        let b:overlengthhi = 1
    endif
endfunction

map <leader>l <Esc>:call ToggleLongLineHi()<CR>

" Toggle mouse functionality
function ToggleMouse()
    if exists("b:togglemouse") && b:togglemouse
        highlight clear LongLines
        set mouse=
        let b:togglemouse = 0
    else
        highlight LongLines ctermfg=red cterm=underline
        match LongLines /\%80v.\+/
        set mouse=a
        let b:togglemouse = 1
    endif
endfunction

call ToggleMouse()
map <leader>m <Esc>:call ToggleMouse()<CR>
