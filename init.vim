call plug#begin("~/.vim/plugged")
 Plug 'Th3Whit3Wolf/one-nvim'
 Plug 'octol/vim-cpp-enhanced-highlight'
 Plug 'rakr/vim-one'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'preservim/nerdtree'
 Plug 'tpope/vim-surround'
 Plug 'vim-airline/vim-airline'
 Plug 'ap/vim-css-color'
 Plug 'ryanoasis/vim-devicons'
 Plug 'tc50cal/vim-terminal'
 Plug 'preservim/tagbar'
 Plug 'terryma/vim-multiple-cursors'
 Plug 'preservim/nerdcommenter'
 Plug 'tpope/vim-commentary'
 Plug 'mhinz/vim-startify'
 Plug 'vim-scripts/fpc.vim'
 Plug 'Shougo/neosnippet'
 Plug 'Shougo/neosnippet-snippets'
 Plug 'godlygeek/tabular'
 Plug 'mileszs/ack.vim'
 Plug 'ctrlpvim/ctrlp.vim'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] "Hide files in .gitignore
let g:ctrlp_show_hidden = 1                                                         "Show dotfiles

au BufRead,BufNewFile *.pp set filetype=pascal

let g:coc_disable_startup_warning = 1
" color schemes
 if (has("termguicolors"))
 set termguicolors
 endif
 syntax enable
 " colorscheme evening
let g:one_allow_itaics = 1
colorscheme one
set background=light
" open new split panes to right and below
set splitright
set splitbelow
set modeline
set modelines=2

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" move split panes to left/bottom/top/right
 nnoremap <A-h> <C-W>H
 nnoremap <A-j> <C-W>J
 nnoremap <A-k> <C-W>K
 nnoremap <A-l> <C-W>L
" move between panes to left/bottom/top/right
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
"
let filetype_p = "pascal"
let filetype_pp = "pascal"

