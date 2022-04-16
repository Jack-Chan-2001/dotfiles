" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"filetype plugin indent on

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set smartcase		" Do smart case matching
"set hidden		" Hide buffers when they are abandoned

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set background=dark

set nocompatible
syntax on
set number
set ruler
set cursorline
set showcmd			" Show (partial) command in status line.
set showmode	 	" Show the current mode
set showmatch
set matchtime=1

" edit
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set backspace=indent,eol,start

" mouse
set mouse=a
set shortmess+=I
set laststatus=2

" search
set ignorecase
set incsearch
set hlsearch

" file
set noswapfile
set noundofile
set autowrite        " Automatically save before commands like :next and :make

