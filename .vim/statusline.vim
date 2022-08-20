"
" statusline.vim
" ---
" Custom statusline configuration for speed and simplicity.
"

" Statusline
set noshowmode
let g:currentmode = {
    \ 'n'  : 'N ',
    \ 'no' : 'N·Operator Pending ',
    \ 'v'  : 'V ',
    \ 'V'  : 'V·Line ',
    \ '' : 'VB',
    \ '\<C-V>' : 'V·Block ',
    \ 's'  : 'Select ',
    \ 'S'  : 'S·Line ',
    \ '\<C-S>' : 'S·Block ',
    \ 'i'  : 'I ',
    \ 'R'  : 'R ',
    \ 'Rv' : 'V·Replace ',
    \ 'c'  : 'Command ',
    \ 'cv' : 'Vim Ex ',
    \ 'ce' : 'Ex ',
    \ 'r'  : 'Prompt ',
    \ 'rm' : 'More ',
    \ 'r?' : 'Confirm ',
    \ '!'  : 'Shell ',
    \ 't'  : 'Terminal '
    \}

" Automatically change the statusline color depending on mode
function! ChangeStatuslineColor()
  if (mode() =~# '\v(n|no)')
    exe 'hi! StatusLine ctermfg=008 guifg=#bbbbbb'
  elseif (mode() =~# '\v(v|V)' || g:currentmode[mode()] ==# 'V·Block' || get(g:currentmode, mode(), '') ==# 't')
    exe 'hi! StatusLine ctermfg=005 guifg=#ed64bd'
  elseif (mode() ==# 'i')
    exe 'hi! StatusLine ctermfg=004 guifg=#74c5f9'
  else
    exe 'hi! StatusLine ctermfg=006 guifg=#acebfb'
  endif

  return ''
endfunction

" Find out current buffer's size and output it.
function! FileSize()
  let bytes = getfsize(expand('%:p'))
  if (bytes >= 1024)
    let kbytes = bytes / 1024
  endif
  if (exists('kbytes') && kbytes >= 1000)
    let mbytes = kbytes / 1000
  endif

  if bytes <= 0
    return '0'
  endif

  if (exists('mbytes'))
    return mbytes . 'MB '
  elseif (exists('kbytes'))
    return kbytes . 'KB '
  else
    return bytes . 'B '
  endif
endfunction

function! ReadOnly()
  if &readonly || !&modifiable
    return ''
  else
    return ''
  endif
endfunction

function! GitInfo()
  let git = FugitiveHead()
  if git != ''
    return ' '.fugitive#head()
  else
    return ''
  endif
endfunction

set laststatus=2
set statusline=
set statusline+=%{ChangeStatuslineColor()}                  " Changing the statusline color
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}      " Current mode
"set statusline+=%8*\ [%n]                                   " buffernr
set statusline+=%8*\ %{GitInfo()}                           " Git Branch name
set statusline+=%8*\ %<%F\ %{ReadOnly()}\ %m\ %w\           " File+path
set statusline+=%#warningmsg#
set statusline+=%*
set statusline+=%9*\ %=                                     " Space
set statusline+=%8*\ %y\                                    " FileType
set statusline+=%7*\ %{(&fenc!=''?&fenc:&enc)}\[%{&ff}]\    " Encoding & Fileformat
set statusline+=%8*\ %-3(%{FileSize()}%)                    " File size
set statusline+=%0*\ %3p%%\ \ %l:\ %3c\                    " Rownumber/total (%)
"set statusline+=%0*\ %3p%%\ \|\ %l:\ %3c\                  " Rownumber/total (%)

hi User1 ctermfg=007
hi User2 ctermfg=008 guifg=#606060
hi User3 ctermfg=008 guifg=#606060
hi User4 ctermfg=008 guifg=#606060
hi User5 ctermfg=008 guifg=#606060
hi User7 ctermfg=008 guifg=#606060
hi User8 ctermfg=008 guifg=#606060
hi User9 ctermfg=007
