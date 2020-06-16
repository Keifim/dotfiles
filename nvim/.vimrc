call plug#begin('~/.vim/plugged')
	Plug 'dylanaraps/wal.vim'
	Plug 'scrooloose/nerdtree'
call plug#end()

set termguicolors
colorscheme wal

" Turn on syntax highlighting.
syntax on
set t_Co=256
set cursorline

" Automatically wrap text that extends beyond the screen length.
set wrap
set tabstop=2
set shiftwidth=2
set noexpandtab
autocmd FileType * set tabstop=2|set shiftwidth=2|set noexpandtab
autocmd BufEnter *.py set ai sw=2 ts=2 sta et fo=croql

" Speed up scrolling in Vim
set ttyfast

" Status bar
set laststatus=2

" Display options
set showmode
set showcmd

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Show line numbers
set number

" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Encoding
set encoding=utf-8

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Automatically save and load folds
augroup AutoSaveFolds
	autocmd!
	autocmd BufWinLeave,BufLeave,BufWritePost ?* nested silent! mkview!
  autocmd BufWinEnter ?* silent! loadviewau BufWinLeave ?* mkview
augroup END

" Mouse
set mouse=a

noremap <Up> 4k
noremap <Down> 4j
noremap <C-Up> 2k
noremap <C-Down> 2j

" toggle hybrid line numbers
set relativenumber
set nu rnu

" Omni completion
set omnifunc=syntaxcomplete#Complete

" Set syntax and filetype for .html.j2
au BufRead,BufNewFile *.html.j2 set filetype=html
au BufNewFile,BufRead,BufReadPost *.html.j2 set syntax=jinja
	" omni
	au FileType html.j2 set omnifunc=htmlcomplete#CompleteMonths
" closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.html.j2'
let g:closetag_filetypes = 'html,xhtml,phtml,html.j2'
let g:closetag_shortcut = ';>'

" clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" stop search
noremap <Leader>n :nohlsearch<Enter>

" autoread
set autoread

" move line
nnoremap - :m+<Enter>
nnoremap + :m-2<Enter>

" comment
nnoremap m s/^/# /<Enter>
