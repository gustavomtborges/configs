call plug#begin('~/.local/share/nvim/plugged')

" Status bar
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
" Tree explorer
Plug 'scrooloose/nerdtree'
" Themes
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'Lokaltog/vim-monotone'
Plug 'lifepillar/vim-solarized8'
Plug 'cormacrelf/vim-colors-github'
Plug 'rakr/vim-one'
" Surround quotes
Plug 'tpope/vim-surround'
" Syntax highlight
"Plug 'sheerun/vim-polyglot'
" Fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Show git changes
Plug 'airblade/vim-gitgutter'
" Editconfig
Plug 'editorconfig/editorconfig-vim'
" Code completition
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Comments
Plug 'preservim/nerdcommenter'
" CSS Color Highlight
Plug 'ap/vim-css-color'

call plug#end()

"" Set properties
set encoding=UTF-8
" Move unsave buffers
set hidden
" Show command preview
set inccommand=split
" Set tab columns = 4
set tabstop=4
" Ident 2 by 2 
set shiftwidth=2
" Change tab to spaces
set expandtab
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

"" Theming
set termguicolors
set background=light
syntax enable
let ayucolor = "mirage" " dark light mirage
colorscheme one
" show chars
"set list
set listchars=tab:→\ ,trail:∙,eol:¬
" Highlight cursor position
set cursorline
" LightLine
set noshowmode
let g:lightline                  = {}
let g:lightline.colorscheme      = 'one'

"" Display
" Number lines
set number
set relativenumber
" NERDTree Configuration
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize = 50

"" Keybinds
" Map leader to Space
let mapleader="\<space>"

" Edit and load neovim config
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<CR>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>

" Remap Esc
imap jk <esc>

" NerdTree binds
nnoremap <silent> <F2> :NERDTree<CR>

"" fzf.vim
" Search files and occurrencies
nnoremap <C-p> :GFiles --cached --others --exclude-standard<CR>
nnoremap <leader>f :Rg<space>
" Clean search (highlight)
nnoremap <silent> <C-l> :noh<CR>

"" Buffers settings
" List
nnoremap <silent> <leader>b :Buffers<CR>
" Close
nnoremap <silent> <leader>w :bd<CR>

" Copy from clipborad
vnoremap YY "+y<CR>

" Coc binds
" Trigger auto completition manually
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent><leader>gd <Plug>(coc-definition)
nmap <silent><leader>gr <Plug>(coc-references)
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

