call plug#begin('~/.local/share/nvim/plugged')

" Status bar
Plug 'vim-airline/vim-airline'
" Tree explorer
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
" Themings
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'ayu-theme/ayu-vim'
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
" Git integration
Plug 'tpope/vim-fugitive'
" File icons
Plug 'ryanoasis/vim-devicons'
" Comments
Plug 'scrooloose/nerdcommenter'

call plug#end()

"" Set properties
set encoding=UTF-8
" Move unsave buffers
set hidden
" Show command preview
set inccommand=split
" True Colors enable.
set termguicolors
" show chars
set list
set listchars=tab:→\ ,trail:∙,eol:¬
" Set tab = 4
set tabstop=4
set shiftwidth=4
" Number lines
set number
set relativenumber
" Incremental search
set incsearch
" Ignore case when searching
set ignorecase
" Ignore case when searching lowercase
set smartcase
" Highlight cursor position
" set cursorline
" Auto indent
set smartindent
set updatetime=250
" Use mouse all modes
set mouse=a

" Theming
let ayucolor="mirage"
colorscheme challenger_deep
set background=dark
syntax on

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
\}

"" Keybinds
" Edit and load neovim config
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

" Remap Esc
imap jj <esc>

" NerdTree binds
nnoremap <silent> <F2> :NERDTree<cr>

"" fzf.vim
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'

" Search files and occurrencies
nnoremap <c-p> :Files<cr>
nnoremap <leader>f :Ag<space>
" Clean search (highlight)
nnoremap <silent> <C-l> :noh<cr>

"" Buffer nav
nnoremap <silent> <leader>b :Buffers<cr>
nnoremap <silent> <leader>q :bp<cr>
nnoremap <silent> <leader>w :bn<cr>

"" Close buffer
nnoremap <leader>x :bd<cr>

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

