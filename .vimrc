set shell=/usr/local/bin/zsh  " Set correct folder shell
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins                                       "
""""""""""""""""""""""""""""""""""""""""""""""""""""

" Git Wrapper
Plugin 'tpope/vim-fugitive'

" Quoting/parenthesizing helper
Plugin 'tpope/vim-surround'

" Vim Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

""""""""""""""""""""""""""""""""""""""""""""""""""""

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General                                        "
"""""""""""""""""""""""""""""""""""""""""""""""""""""

" Sets how many lines of history VIM has to remember
set history=700

" Set to auto read when a file is changed from the outside
set autoread

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" Set a status line
set laststatus=2

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
" set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts                                "         
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable

" Color Scheme and background
colorscheme molokai
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
"    set guioptions-=T
"    set guioptions+=e
    set t_Co=256
"    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related	                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Enable good configuration for lines
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Enable line number
set number

" Map shift tab to remove ident level, on insertion mode
imap <S-Tab> <C-o><<

" Map tab and shift tab in visual mode to ident or remove levels
vmap <Tab> >gv
vmap <S-Tab> <gv

" Enter paste mode
set pastetoggle=<F3>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline Configuration                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Repair default behavior, and enable airline
let g:airline#extensions#tabline#enabled = 1

" Config separators
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Populate airline symbols with powerline patched fonts
let g:airline_powerline_fonts = 1

" Choose airline theme
:let g:airline_theme='powerlineish'

