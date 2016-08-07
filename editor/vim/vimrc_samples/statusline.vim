"---------------------------------------------------------------------------
"   Status line
"---------------------------------------------------------------------------
" last status
set laststatus=2
" highlight StatusLine NONE ctermbg=DarkGreen ctermfg=White cterm=NONE
" highlight StatusLine guifg=SlateBlue guibg=Yellow
" highlight StatusLineNC guifg=Gray guibg=White
" set statusline=
" set statusline+=%2*%-3.3n%0*\  " buffer number
" set statusline+=%f\            " file name
" set statusline+=%h%1*%m%r%w%0* " flag
" set statusline+=[
" if v:version >= 600
    " set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
    " set statusline+=%{&fileencoding}, " encoding
" endif
" set statusline+=%{&fileformat}] " file format
" set statusline+=%r        " read only flag '[RO]'
" set statusline+=%m        " modified flag '[+]' if modifiable
" set statusline+=%=        " right align
" set statusline+=%2*0x%-8B\  " current char
" " set statusline+=0x%-8B\   " current char
" set statusline+=%-14.(%l,%c%V%)\ %<%P " offset
" set statusline+=\ Cur:
" set statusline+=%-14.(%l,%c%V%)\ %<%P " offset
" if filereadable(expand("$VIM/vimfiles/plugin/vimbuddy.vim"))
    " set statusline+=\ %{VimBuddy()} " vim buddy
" endif
" set statusline+=:%l/%L    " line/lines