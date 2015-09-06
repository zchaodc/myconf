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
" set autochdir 		" auto change the directory
set mousehide
set mouse=v
set mouse=a             " enable using the mouse if terminal emulator
                        "    supports it (xterm does)
set title              " change the terminal's title
"set ttyfast            " always use a fast terminal
"set cursorline         " underline the current line, for quick orientation
set background=dark
colorscheme solarized

filetype off          	" necessary to make ftdetect work on Linux
syntax on		" set syntax
filetype on           	" Enable filetype detection
filetype indent on    	" Enable filetype-specific indenting
filetype plugin on    	" Enable filetype-specific plugins

set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
                                "    case-sensitive otherwise
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

" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch

"---------------------------------------------------------------------------
"   ENCODING SETTINGS
"---------------------------------------------------------------------------
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" :W sudo saves the file
" (useful for handling the permission-denied error)
" command W w !sudo tee % > /dev/null

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu                    " make tab completion for files/buffers act like bash
set wildmode=list:full          " show a list when pressing tab and complete
                                "    first full match
set wildignore=*.swp,*.bak,*.pyc,*.class,*.out,*.o

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fast editing and reloading of vimrc configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" map <leader>e :e! ~/.vim_runtime/my_configs.vim<cr>
" autocmd! bufwritepost vimrc source ~/.vim_runtime/my_configs.vim

" Fast commands
nmap <leader>w :w!<cr>
nmap <leader>W :wa!<cr>
nmap <leader>q :q!<cr>
nmap <leader>Q :qa!<cr>
nmap <leader>x :x!<cr>
nmap <leader>X :xa!<cr>
" Go back to the last line
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal g`\"" |
	\ endif
