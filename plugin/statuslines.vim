set laststatus=2
set statusline=%f\ %#Special#%(%{FugitiveHead()}%)%=%(%#Error#%R%)%*

if exists("+showtabline")
  function! MyTabLine()
    let s = ''
    let t = tabpagenr()
    let i = 1

    while i <= tabpagenr('$')
      let buflist = tabpagebuflist(i)
      let winnr = tabpagewinnr(i)
      let s .= '%' . i . 'T'
      let s .= (i == t ? '%1*' : '%2*')
      let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')

      let bufnr = buflist[winnr - 1]
      let file = bufname(bufnr)
      let buftype = getbufvar(bufnr, 'buftype')

      if buftype == 'nofile'
        if file =~ '\/.'
          let file = substitute(file, '.*\/\ze.', '', '')
        endif
      else
        let file = fnamemodify(file, ':p:t')
      endif

      if file == ''
        let file = '[No Name]'
      endif

      let s .= file
      let s .= '  '
      let i = i + 1
    endwhile

    let s .= '%T%#TabLineFill#%='

    return s
  endfunction

  set tabline=%!MyTabLine()
endif

" Cleaner fzf
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 signcolumn=no noruler noshowcmd
  \| autocmd BufLeave <buffer> set laststatus=2 signcolumn=yes noruler showcmd

" Cleaner qf
autocmd! FileType qf
autocmd  FileType qf set laststatus=0 signcolumn=no noruler noshowcmd
  \| autocmd BufLeave <buffer> set laststatus=2 signcolumn=yes noruler showcmd
