call plug#begin('~/.local/share/nvim/plugged')

" Status bar
Plug 'vim-airline/vim-airline'
" Tree explorer
Plug 'scrooloose/nerdtree'
" Tagbar structure
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
" Themings
Plug 'mhartington/oceanic-next'
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
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

call plug#end()
"" Set properties

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

" Highlight search
set hlsearch
" Incremental search
set incsearch
" Ignore case when searching
set ignorecase
" Ignore case when searching lowercase
set smartcase

" Highlight cursor position
set cursorline

" Theming
colorscheme nord
set background=dark
syntax on

" NERDTree Configuration
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize = 50

" Always show buffer name
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Map leader to Space
let mapleader="\<space>"

"" Keybinds
" Edit and load neovim config
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

" Remap Esc
imap jj <esc>

" Clean search highlight on enter
map <silent> <cr> :noh<cr>

" NerdTree binds
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" Tagbar bind
nnoremap <silent> <F4> :TagbarToggle<cr>

"" fzf.vim
let $FZF_DEFAULT_COMMAND = "rg --files --follow --hidden"

" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
endif

" Search files and occurrencies
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
" Clean search (highlight)
nnoremap <silent> <C-l> :noh<cr>

"" Buffer nav
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>q :bp<CR>
nnoremap <silent> <leader>w :bn<CR>

"" Close buffer
nnoremap <leader>c :bd<CR>

" Copy from clipborad
noremap YY "+y<CR>

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

