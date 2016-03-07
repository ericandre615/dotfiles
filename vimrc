" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

filetype off

" Vundle
" Set runtime path to Vundle
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()

" Let Vundle manage Vundle
" Bundle 'VundleVim/Vundle.vim'

" Bundles
" Bundle 'scrooloose/syntastic'

" All plugins before this ine
" call vundle#end()
" filetype plugin indent on

" Allows you to have multiple buffers open
set hidden
" Lines of code will not wrap to the next line
set nowrap
" Make backspace behave like other editors
set backspace=indent,eol,start
" Automatically indent on new lines
set autoindent
" Copy the indentation of the previous line if auto indent doesn't know what to do
set copyindent
" Indenting a line with >> or << will indent or un-indent by 4
set shiftwidth=2
" Pressing tab in insert mode will use 4 spaces
set softtabstop=2
" Use spaces instead of tabs
set expandtab
" Highlight matching braces/tags
set showmatch
" Ignore case when searching
set ignorecase
" ...unless there's a capital letter in the query
set smartcase
" Indent to correct location with tab
set smarttab
" Search while you enter the query, not after
set incsearch
" More undos
set undolevels=1000
" Vim can set the title of the terminal window
set title
" Use a visual indicator instead of a beep
set visualbell
" Or just turn error bells off with this
set noerrorbells
" Enable syntax highlighting
syntax enable
" Tell vim that your terminal supports 256 colors
set t_Co=256
" Toggle paste mode with F2
set pastetoggle=<F2>
" Set Leader key
let mapleader=','
" Show line numbers
set number

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_mode_map = {'mode': 'passive' }
