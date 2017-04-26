" Others
" Auto read the file if its were to changed from outside the vim
set autoread

" Remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

let g:netrw_liststyle=3

" Do not create backup files
set nobackup
set nowritebackup
set noswapfile

" A buffer becomes hidden when it is abandoned
set hid

set whichwrap+=<,>,h,l

" Use universal clipboard
set clipboard=unnamed

" Show filename in title
set title