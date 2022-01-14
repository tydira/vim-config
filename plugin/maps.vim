" Hail Comma
let mapleader=','

" Store the path to the kroogs plugin
let $KROOGS=expand('<sfile>:p:h')

" Adjust help commands
cnorea h tab help
cnorea vh vert help
cnorea hh help

" Quick config access
no <leader>vv :tabnew $VIMRUNTIME<CR>
no <leader>vc :tabnew $MYVIMRC<CR>
no <leader>vk :tabnew $KROOGS<CR>
no <leader>vr :so $MYVIMRC<CR>

" Reset search string
no <leader>/ :let @/=''<CR>

" Write a sessionfile
no <leader>w :Obsession .session.vim<CR>

" File tree
no <leader>f :NERDTreeToggle<CR>
no <leader>F :NERDTree %

" Fuzzy finder
no <silent> <space> :FZF --no-info --color=gutter:-1,bg:-1,bg+:-1 --prompt=\ \ <CR>

" Tabs
no <C-t> :tabnew 
no <silent> <C-n> :tabnext<CR>
no <silent> <C-p> :tabprev<CR>

" Splits
no <C-w>v :vsplit 
no <C-w>s :split 

" Movement
no <C-j> }
no <C-k> {
no <C-h> <Home>
no <C-l> $

" Quicker escape
ino <C-space> <C-c>
vno <C-space> <C-c>
cno <C-space> <C-c>

" Fugitive
no <leader>gC :vert :Git commit %<CR>
no <leader>gc :vert :Git commit<CR>
no <leader>gd :vert :Gdiff<CR>
no <leader>gs :Git<CR>
no <leader>gb :Gblame<CR>
no <leader>ge :Gedit<CR>
no <leader>gw :Gwrite<CR>
no <leader>gB :Gbrowse<CR>
" no <leader>gp :Git push<CR>
no <leader>gp :Dispatch! git push<CR>
no <leader>gu :Git pull<CR>
no <leader>gf :Git fetch<CR>
no <leader>gg :GitGutterToggle<CR>

" no <leader>ga :Git add %:p<CR><CR>
" no <leader>gs :Gstatus<CR>
" no <leader>gc :Gcommit -v -q<CR>
" no <leader>gt :Gcommit -v -q %:p<CR>
" no <leader>gd :Gdiff<CR>
" no <leader>ge :Gedit<CR>
" no <leader>gr :Gread<CR>
" no <leader>gw :Gwrite<CR><CR>
no <leader>gl :silent! Glog<CR>:bot copen<CR>
" no <leader>gp :Ggrep<Space>
" no <leader>gm :Gmove<Space>
" no <leader>gb :Git branch<Space>
" no <leader>go :Git checkout<Space>
" no <leader>gps :Dispatch! git push<CR>
" no <leader>gpl :Dispatch! git pull<CR>

" Find word under cursor with :Ag
no <leader>k :Ack! <cword><CR>

" Leader for EasyMotion
nm s <Plug>(easymotion-s)
vmap s <Plug>(easymotion-s)

" Search 
nm /  <Plug>(incsearch-forward)
nm ?  <Plug>(incsearch-backward)
nm g/ <Plug>(incsearch-stay)

" Quickfix
nm <silent> [q :cp<cr>
nm <silent> ]q :cn<cr>

nm *   <Plug>(asterisk-*)
nm #   <Plug>(asterisk-#)
nm g*  <Plug>(asterisk-g*)
nm g#  <Plug>(asterisk-g#)
nm z*  <Plug>(asterisk-z*)
nm gz* <Plug>(asterisk-gz*)
nm z#  <Plug>(asterisk-z#)
nm gz# <Plug>(asterisk-gz#)

" Seach for highlight
vno // y/\V<C-R>=escape(@",'/\')<CR><CR>

" " Show syntax highlighting groups for word under cursor
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
no <leader>h :call <SID>SynStack()<CR>
" no <leader>hh :so $VIMRUNTIME/syntax/hitest.vim<CR>

" Tab completion
ino <silent><expr><tab> pumvisible() ? "\<c-n>" : <SID>check_back_space() ? "\<tab>" : coc#refresh()
ino <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
ino <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nm <silent> [g <Plug>(coc-diagnostic-prev)
nm <silent> ]g <Plug>(coc-diagnostic-next)

" Code navigation.
nm <silent> gd <Plug>(coc-definition)
nm <silent> gy <Plug>(coc-type-definition)
nm <silent> gi <Plug>(coc-implementation)
nm <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nno <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nm <leader>rn <Plug>(coc-rename)

" Formatting selected code.
" xm <leader>f  <Plug>(coc-format-selected)
" nm <leader>f  <Plug>(coc-format-selected)

" ?
" augroup mygroup
"   autocmd!
"   " Setup formatexpr specified filetype(s).
"   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"   " Update signature help on jump placeholder.
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xm <leader>a  <Plug>(coc-codeaction-selected)
nm <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nm <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nm <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xm if <Plug>(coc-funcobj-i)
om if <Plug>(coc-funcobj-i)
xm af <Plug>(coc-funcobj-a)
om af <Plug>(coc-funcobj-a)
xm ic <Plug>(coc-classobj-i)
om ic <Plug>(coc-classobj-i)
xm ac <Plug>(coc-classobj-a)
om ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" Note coc#float#scroll works on neovim >= 0.4.3 or vim >= 8.2.0750
nno <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nno <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
ino <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
ino <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" NeoVim-only mapping for visual mode scroll
" Useful on signatureHelp after jump placeholder of snippet expansion
if has('nvim')
  vno <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#nvim_scroll(1, 1) : "\<C-f>"
  vno <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#nvim_scroll(0, 1) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nm <silent> <C-s> <Plug>(coc-range-select)
xm <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
" nno <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions.
" nno <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" " Show commands.
nno <silent><nowait> <leader>c  :<C-u>CocList commands<cr>
" " Find symbol of current document.
nno <silent><nowait> <leader>o  :<C-u>CocList outline<cr>
" " Search workspace symbols.
nno <silent><nowait> <leader>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nno <silent><nowait> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nno <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list.
" nno <silent><nowait> <space>p  :<C-u>CocListResume<CR>
