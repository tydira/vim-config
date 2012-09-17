set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "enviro"

hi Normal           ctermfg=none        ctermbg=none        cterm=none
hi NonText          ctermfg=black       ctermbg=none        cterm=none

hi Cursor           ctermfg=none        ctermbg=none        cterm=reverse
hi LineNr           ctermfg=none        ctermbg=none        cterm=none

hi VertSplit        ctermfg=black       ctermbg=none        cterm=none
hi StatusLine       ctermfg=lightgreen  ctermbg=none        cterm=bold
hi StatusLineNC     ctermfg=black       ctermbg=none        cterm=none
hi TabLineFill      ctermfg=none        ctermbg=none        cterm=none
hi TabLine          ctermfg=black       ctermbg=none        cterm=none
hi TabLineSel       ctermfg=lightgreen  ctermbg=none        cterm=bold

hi Folded           ctermfg=none        ctermbg=none        cterm=none
hi Title            ctermfg=none        ctermbg=none        cterm=none
hi Visual           ctermfg=none        ctermbg=none        cterm=reverse

hi SpecialKey       ctermfg=none        ctermbg=none        cterm=none

hi WildMenu         ctermfg=white       ctermbg=none        cterm=none
hi PmenuSbar        ctermfg=black       ctermbg=none        cterm=none

hi ErrorMsg         ctermfg=red         ctermbg=none        cterm=none
hi WarningMsg       ctermfg=red         ctermbg=none        cterm=none
hi LongLineWarning  ctermfg=none        ctermbg=none        cterm=underline

hi ModeMsg          ctermfg=black       ctermbg=none        cterm=bold
hi CursorLine       ctermfg=none        ctermbg=none        cterm=bold
hi CursorColumn     ctermfg=none        ctermbg=none        cterm=bold
hi MatchParen       ctermfg=red         ctermbg=none        cterm=bold
hi Pmenu            ctermfg=black       ctermbg=none        cterm=none
hi PmenuSel         ctermfg=green       ctermbg=none        cterm=none
hi Search           ctermfg=none        ctermbg=none        cterm=underline
hi IncSearch        ctermfg=none        ctermbg=none        cterm=reverse 

hi Error            ctermfg=red         ctermbg=none        cterm=none
hi Comment          ctermfg=darkgray    ctermbg=none        cterm=none
hi String           ctermfg=lightgreen  ctermbg=none        cterm=none
hi Number           ctermfg=white       ctermbg=none        cterm=none

hi Keyword          ctermfg=blue        ctermbg=none        cterm=none
hi PreProc          ctermfg=blue        ctermbg=none        cterm=none
hi Conditional      ctermfg=blue        ctermbg=none        cterm=none

hi Todo             ctermfg=red         ctermbg=none        cterm=none
hi Constant         ctermfg=cyan        ctermbg=none        cterm=none

hi Identifier       ctermfg=cyan        ctermbg=none        cterm=none
hi Function         ctermfg=lightgreen  ctermbg=none        cterm=none
hi Type             ctermfg=yellow      ctermbg=none        cterm=none
hi Statement        ctermfg=lightblue   ctermbg=none        cterm=none

hi Special          ctermfg=white       ctermbg=none        cterm=none
hi Delimiter        ctermfg=cyan        ctermbg=none        cterm=none
hi Operator         ctermfg=white       ctermbg=none        cterm=none

hi DiffAdd          ctermfg=black       ctermbg=blue        cterm=none
hi DiffChange       ctermfg=black       ctermbg=red         cterm=none
hi DiffDelete       ctermfg=black       ctermbg=yellow      cterm=none

hi link Character          Constant
hi link Boolean            Constant
hi link Float              Number
hi link Repeat             Statement
hi link Label              Statement
hi link Exception          Statement
hi link Include            PreProc
hi link Define             PreProc
hi link Macro              PreProc
hi link PreCondit          PreProc
hi link StorageClass       Type
hi link Structure          Type
hi link Typedef            Type
hi link Tag                Special
hi link SpecialChar        Special
hi link SpecialComment     Special
hi link Debug              Special

hi link xmlTag             Keyword 
hi link xmlTagName         Conditional 
hi link xmlEndTag          Identifier 

hi link htmlTag            Keyword 
hi link htmlTagName        Conditional 
hi link htmlEndTag         Identifier 

hi link javaScriptNumber   Number 
