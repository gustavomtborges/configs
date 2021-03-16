if exists('g:vscode')
    " VSCode extension
else
    " ordinary neovim
call plug#begin('~/.local/share/nvim/plugged')

" Status bar
"
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" Tree explorer
"
Plug 'preservim/nerdtree'

" Themes
"
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'lifepillar/vim-solarized8'
"Plug 'cormacrelf/vim-colors-github'
Plug 'rakr/vim-one'
Plug 'drewtempelmeyer/palenight.vim'
"Plug 'mhartington/oceanic-next'
Plug 'adrian5/oceanic-next-vim'

" Languages
"
Plug 'elixir-editors/vim-elixir'

" Helpers
"
Plug 'tpope/vim-surround'
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
"Plug 'yggdroot/indentLine'
"Plug 'lukas-reineke/indent-blankline.nvim'

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

" Theming
set termguicolors
set background=dark
syntax enable
let ayucolor = "mirage" " dark light mirage
let gruvbox_contrast_dark = "hard" " soft medium hard
colorscheme ayu
" show chars
"set list
set listchars=tab:→\ ,trail:∙,eol:¬
let g:indentLine_char = '|'
" Highlight cursor position
"set cursorline
"
" LightLine
set noshowmode
set showtabline=2
let g:lightline                  = {}
let g:lightline.colorscheme      = 'ayu'

let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'

let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

" Display
" Number lines
set number
set relativenumber

" NERDTree Configuration
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize = 50

" Keybinds
" Map leader to Space
let mapleader="\<space>"

" Edit and load neovim config
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<CR>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>

" Remap Esc
imap jk <esc>
imap jj <esc>

" Save with Ctrl-s
nnoremap <silent><c-s> :<c-u>update<cr>
vnoremap <silent><c-s> <c-c>:update<cr>gv
inoremap <silent><c-s> <c-o>:update<cr>

" NerdTree binds
nnoremap <silent> <S-M-e> :NERDTreeToggle<CR>

" fzf.vim
" Search files and occurrencies
nnoremap <C-p> :GFiles --cached --others --exclude-standard<CR>
nnoremap <leader>f :Rg<space>
" Clean search (highlight)
nnoremap <silent> <C-l> :noh<CR>

"" Buffers settings
" List
nnoremap <silent> <leader>e :Buffers<CR>
" Close
nnoremap <silent> <leader>w :bd<CR>
" Next Previous
nnoremap <silent> <leader>h :bp<CR>
nnoremap <silent> <leader>l :bn<CR>

" Git Gutter
let g:gitgutter_map_keys = 0
nmap <leader>gs <Plug>(GitGutterStageHunk)
nmap <leader>gu <Plug>(GitGutterUndoHunk)
nmap <leader>g] <Plug>(GitGutterNextHunk)
nmap <leader>g[ <Plug>(GitGutterPrevHunk)

" Copy from clipborad
vnoremap YY "+y<CR>

" Coc binds
" Trigger auto completition manually
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent><leader>gd <Plug>(coc-definition)
nmap <silent><leader>gr <Plug>(coc-references)
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

endif
