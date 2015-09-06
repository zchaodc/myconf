" **********************************************************************
"    vundle settings
" **********************************************************************
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'SuperTab'
Plugin 'Syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'flazz/vim-colorschemes'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" **********************************************************************
"    ***** Plugin settings *****
" **********************************************************************
" Syntastic
let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
let g:syntastic_auto_loc_list=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_loc_list_height = 5
" c++ settings
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
" let g:syntastic_cpp_errorformat = '%f:%l:%c: %trror: %m'

" -----------------------------------------------------------------------------
" NERDTree
let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")
let NERDTreeShowBookmarks=1

let NERDTreeShowFiles=1
let NERDTreeShowHidden=1

let NERDTreeQuitOnOpen=1
let NERDTreeHighlightCursorline=1
let NERDTreeMouseMode=2
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
            \ '\.o$', '\.so$', '\.egg$', '^\.git$', '\.beam$', '\.swp$' ]

" NERDCommenter
let NERDSpaceDelims=1

" -----------------------------------------------------------------------------
" tagbar
nmap tb :TlistClose<CR>:TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=30     " tagbar width
"let g:tagbar_left=1      " tagbar
let g:tagbar_sort = 0

" -----------------------------------------------------------------------------
" vim-airline
" let g:airline_theme='powerlineish'
let g:airline_left_sep=''
let g:airline_right_sep=''
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '◀'
let g:airline_section_z=''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline_powerline_fonts = 1
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
let g:airline_theme = 'solarized'
" -----------------------------------------------------------------------------
" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
" let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_max_files = 15000
let g:ctrlp_max_depth = 40
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.beam
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_custom_ignore = {
            " \ 'dir':  '\v[\/]\.(git|hg|svn)$',
            " \ 'file': '\v\.(so)$',
            " \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
            " \ }
let g:ctrlp_user_command = 'find %s -type f'

" -----------------------------------------------------------------------------
" easymotion
" Gif config
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" These `n` & `N` mappings are options. You do not have to map `n` & `N` to
" EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1 " US layout

" -----------------------------------------------------------------------------
"    Shortcuts for plugins
" -----------------------------------------------------------------------------
" Syntax Check
nmap <F6> :SyntasticCheck<CR>
" NerdTree shortcut
nmap <F7> :NERDTreeToggle<CR>
" Tagbar shortcut
nmap <F8> :TagbarToggle<CR>
" Pasete mode
set pastetoggle=<F9>
nmap <F10> :set paste<CR>
nmap <F11> :set nopaste<CR>

" Highlight selected word with mouse and Enter key
let g:highlighting = 0
function! Highlighting()
    if g:highlighting == 1 && @/ =~ '^\\<'.expand('<cword>').'\\>$'
        let g:highlighting = 0
        return ":silent nohlsearch\<CR>"
    endif
    let @/ = '\<'.expand('<cword>').'\>'
    let g:highlighting = 1
    return ":silent set hlsearch\<CR>"
endfunction
nnoremap <silent> <expr> <CR> Highlighting()

" **********************************************************************
"    General VIM Settings
" **********************************************************************

set nocompatible	" not compatible with the old-fashion vi mode
set bs=2		" allow backspacing over everything in insert mode
set history=500		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
" set rulerformat=%15(%c%V\ %p%%%)
set number              " always show line numbers

" auto operation
set autoread		" auto read when file is changed from outside
" set autochdir 	" auto change the directory
set mousehide
set mouse=v
set mouse=a             " enable using the mouse if terminal emulator
set ttymouse=xterm2     " screen user
                        "    supports it (xterm does)
set title               " change the terminal's title
" set ttyfast           " always use a fast terminal
" set cursorline        " underline the current line, for quick orientation
set background=dark
colorscheme solarized

filetype off          	" necessary to make ftdetect work on Linux
syntax on		" set syntax
filetype on           	" Enable filetype detection
filetype indent on    	" Enable filetype-specific indenting
filetype plugin on    	" Enable filetype-specific plugins
" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

" tab page
set tabpagemax=9
set showtabline=2
" auto complete
set complete=.,w,b,k,t,i
set completeopt=longest,menu
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","


" Fast operations
nmap <leader>w  :w!<cr>
nmap <leader>W  :wa!<cr>
nmap <leader>q  :q!<cr>
nmap <leader>Q  :qa!<cr>
nmap <leader>x  :x!<cr>
nmap <leader>X  :xa!<cr>
nmap <leader>h  :set hlsearch!<CR>
" nmap <leader>s :saveas<cr> " must add the arguments
nmap <leader>t  :tabnew<cr>
" reload current file
nmap <leader>r  :e!<CR>
" reload all open files
nmap <leader>R  :tabdo bufdo e!<CR>
" Open new buffers
nmap <leader>v  :rightbelow vsp<cr>
" nmap <leader>|  :rightbelow vsp<cr>
nmap <leader>-  :rightbelow sp<cr>
" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y
" :W sudo saves the file
" (useful for handling the permission-denied error)
" command W w !sudo tee % > /dev/null
"--------------------
" Function: Open tag under cursor in new tab
" Source:   http://stackoverflow.com/questions/563616/vimctags-tips-and-tricks
"--------------------
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
"--------------------
" Function: Remap keys to make it more similar to firefox tab functionality
" Purpose:  Because I am familiar with firefox tab functionality
"--------------------
" map <C-T> :tabnew<CR>
map <C-N> :!gvim &<CR><CR>
map <C-W> :confirm bdelete<CR>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" Go to last active tab
nnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>
vnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>

" default text width
set textwidth=100

" tab key
set tabstop=4       " the tab length
" set smarttab        " the smart tab
set softtabstop=4   " control tab state
set expandtab       " change the tab to space
set shiftwidth=4    " space for inserted or indentation
set autoindent
set smartindent
set backspace=2

" custom settings for speccific filetype
autocmd FileType Makefile set noexpandtab
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120

set foldcolumn=4
set foldopen=all
set foldclose=all

" set cmdheight=2

" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
                                "    case-sensitive otherwise

" window split default settings
set splitbelow
set splitright

"---------------------------------------------------------------------------
" Status line
"---------------------------------------------------------------------------
" last status
set laststatus=2
"---------------------------------------------------------------------------
"   ENCODING SETTINGS
"---------------------------------------------------------------------------
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

set clipboard=unnamed   " yank to the system register (*) by default
set showmatch           " Cursor shows matching ) and }
set showmode            " Show current mode
" set modelines=0
" set nomodeline

" Turn on the Wild menu
set wildchar=<TAB>TAB   " start wild expansion in the command line using <TAB>
set wildmenu            " wild char completion menu
set wildmode=longest:list,full

" ignore these files while expanding wild chars
set wildignore=*.swp,*.o,*.class,*.pyc,*.beam

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

"---------------------------------------------------------------------------
"   swap and backup setting
"---------------------------------------------------------------------------
" swap files (.swp) in a common location, add swap path first
" // means use the file's full path
set dir=~/.vim/_swap//

" backup files (~) in a common location if possible
" set backup
" set backupdir=~/.vim/_backup/,~/tmp,.

" turn on undo files, put them in a common location
" set undofile
" set undodir=~/.vim/_undo/

" **********************************************************************
" other settings
" **********************************************************************



" => Fast editing and reloading of vimrc configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map <leader>e :e! ~/.vim_runtime/my_configs.vim<cr>
" autocmd! bufwritepost vimrc source ~/.vim_runtime/my_configs.vim

" Go back to the last line
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal g`\"" |
	\ endif
