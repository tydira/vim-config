function ToggleLongLinesHi()
    if exists("b:overlengthhi") && b:overlengthhi
        highlight clear LongLines
        let b:overlengthhi = 0
    else
        highlight LongLines ctermfg=red cterm=underline
        match LongLines /\%80v.\+/
        let b:overlengthhi = 1
    endif
endfunction
