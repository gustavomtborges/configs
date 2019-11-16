call plug#begin('~/.local/share/nvim/plugged')

" Status bar
Plug 'vim-airline/vim-airline'
" Tree explorer
Plug 'scrooloose/nerdtree'
" Themings
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'ayu-theme/ayu-vim'
Plug 'Rigellute/rigel'
Plug 'arzg/vim-substrata'
Plug 'cocopon/iceberg.vim'
" Surround quotes
Plug 'tpope/vim-surround'
" Syntax highlight
Plug 'sheerun/vim-polyglot'
" Fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Linting
Plug 'w0rp/ale'
" Show git changes
Plug 'airblade/vim-gitgutter'
" Editconfig
Plug 'editorconfig/editorconfig-vim'
" Code completition
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Comments
Plug 'scrooloose/nerdcommenter'

call plug#end()

"" Set properties
set encoding=UTF-8
" Move unsave buffers
set hidden
" Show command preview
set inccommand=split
" show chars
set list
set listchars=tab:→\ ,trail:∙,eol:¬
" Highlight cursor position
set cursorline
" Set tab columns = 4
set tabstop=4
" Ident 2 by 2 
set shiftwidth=2
" Change tab to spaces
set expandtab
" Number lines
set number
set relativenumber
" Incremental search
set incsearch
" Ignore case when searching
set ignorecase
" Ignore case when searching lowercase
set smartcase
" Auto indent
set smartindent
set updatetime=250
" Use mouse all modes
set mouse=a

" Theming
" True Colors enable.
set termguicolors
let ayucolor="mirage"
colorscheme nord
set background=dark
syntax enable

" Map leader to Space
let mapleader="\<space>"
" NERDTree Configuration
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize = 50
" Always show buffer name
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1

let g:ale_linters = {
\  'javascript': ['eslint'],
\}

let g:ale_fixers = {
\  'json': ['prettier'],
\  'javascript': ['prettier'],
\  'css': ['prettier'],
\  'yaml': ['prettier'],
\  'xml': ['xmllint']
\}

"" Keybinds
" Edit and load neovim config
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

" Remap Esc
imap jk <esc>

" NerdTree binds
nnoremap <silent> <F2> :NERDTree<cr>

"" fzf.vim
" Search files and occurrencies
nnoremap <leader>p :Files<cr>
nnoremap <leader>f :Rg<space>
" Clean search (highlight)
nnoremap <silent> <C-l> :noh<cr>

"" Buffer nav
nnoremap <silent> <leader>b :Buffers<cr>
nnoremap <silent> <leader>q :bp<cr>
nnoremap <silent> <leader>w :bn<cr>

"" Close buffer
nnoremap <leader>x :bp\|bd #<cr>

" Copy from clipborad
vnoremap YY "+y<cr>

nnoremap <F4> :ALEFix<cr>

" Coc binds
" Trigger auto completition manually
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent><leader>gd <Plug>(coc-definition)
nmap <silent><leader>gr <Plug>(coc-references)
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

