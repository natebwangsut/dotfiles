"
" trailing.vim
" @natebwangsut <nate.bwangsut@gmail.com>
" ---
" Remove tailing whitespaces on write to disk
"

" Function to trim whitespaces
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" Strip whitespace on write to disk, except binary files
autocmd BufWritePre * if !&binary | call TrimWhitespace() | endif
