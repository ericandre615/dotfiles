" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Bundle 'VundleVim/Vundle.vim'

" Bundles
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'vim-airline/vim-airline'
Bundle 'airblade/vim-gitgutter'
Bundle 'ternjs/tern_for_vim'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'elixir-lang/vim-elixir'

" All plugins before this ine
call vundle#end()
filetype plugin indent on

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
" Show hidden characters
set list
" Paste properly without adding extra indentation
set paste
" format for showing hidden characters
set listchars=eol:$,tab:>>,space:.,trail:~
" Enable list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" To open a new empty buffer
nmap <leader>T :enew<cr>
"Move to next buffer
nmap <leader>l :bnext<CR>
" move to previous buffer
nmap <leader>h :bprevious<CR>
" close current buffer and move to previous one
nmap <leader>bq :bp <BAR> bd #<CR>
" show all open buffers
nmap <leader>bl :ls<CR>

"colorscheme
colorscheme dracula
" hi SpellBad ctermbg=214 guibg=#ffaf00
" hi SpellCap ctermbg=214 guibg=#ffaf00

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint', 'jshint']
" let g:syntastic_mode_map = {'mode': 'passive'}
" autocmd FileType javascript let g:syntastic_javascript_checkers =
autocmd FileType javascript let g:syntastic_javascript_checkers = findfile('.eslintrc', '.;') != '' ? ['eslint'] : ['standard']
