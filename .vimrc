filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'kh3phr3n/python-syntax'
Plugin 'scrooloose/nerdtree'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'othree/html5.vim'
Plugin 'alvan/vim-closetag'
Plugin 'davidhalter/jedi-vim'
"Plugin 'ananagame/vimsence'
Plugin 'wlangstroth/vim-racket'
Plugin 'vlime/vlime'
Plugin 'NLKNguyen/vim-lisp-syntax'

Bundle 'jistr/vim-nerdtree-tabs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
filetype indent on
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

" Turn on syntax highlighting.
syntax on
set t_Co=256
set cursorline
colorscheme onehalfdark
let g:airline_theme='onehalflight'
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

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

let b:did_ftplugin = 1

let python_self_cls_highlight = 1
let python_no_operator_highlight = 1
let python_no_parameter_highlight = 1
let python_highlight_all = 1

"let g:ycm_key_list_select_completion = ['<TAB>']
"inoremap <Down> <C-R>=pumvisible() ? "\<lt>C-y>\<lt>Down>" : "\<lt>Down>"<CR>
"let g:ycm_key_list_select_previous_completion = ['<S-Tab>']
"inoremap <Up> <C-R>=pumvisible() ? "\<lt>C-y>\<lt>Up>" : "\<lt>Up>"<CR>

noremap <Up> 4k
noremap <Down> 4j

noremap <C-Up> 2k
noremap <C-Down> 2j

set wildmenu

" Automatically enable auto-complete for CSS files
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType scss set omnifunc=csscomplete#CompleteCSS

" Auto-completion
inoremap <S-TAB> <C-x><C-o>

let NERDTreeShowHidden=1

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

" jedi
let g:jedi#popup_on_dot = 1
let g:jedi#show_call_signatures = "0"

