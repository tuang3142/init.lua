" use Vim settings rather than Vi
" set nocompatible

if has("autocmd")
  filetype indent plugin on
endif

" set noshowmode " hide mode, lightline does the jobs
" TODO: auto refresh files
set autowrite  " Automatically :write before running commands
set autoread
" set nowb

autocmd VimResized * wincmd =
" enable filetype plugins
filetype plugin on

set autoindent
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set nohlsearch

" show incomplete commands
set showcmd
set splitbelow
set splitright
set ignorecase
set incsearch
" suggestion for fills
set wildmenu
set wildmode=list:longest,list:full

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
" function! InsertTabWrapper()
"     let col = col('.') - 1
"     if !col || getline('.')[col - 1] !~ '\k'
"         return "\<Tab>"
"     else
"         return "\<C-p>"
"     endif
" endfunction

" " Use ag over grep
" if executable('ag')
"   " Use Ag over Grep
"   set grepprg=ag\ --nogroup\ --nocolor

"   " Use ag in fzf for listing files. Lightning fast and respects .gitignore
"   let $FZF_DEFAULT_COMMAND = 'ag --literal --files-with-matches --nocolor --hidden -g ""'

"   if !exists(":Ag")
"     command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
"     nnoremap \ :Ag<SPACE>
"   endif
" endif

set noequalalways

runtime! macros/matchit.vim

set exrc
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
" set tabstop=4 softtabstop=4
" set shiftwidth=4
set expandtab
set smartindent
set nowrap " this one is considerate, lets try it first
" all about keeping history
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set colorcolumn=80
set signcolumn=yes " sign column for git or lsp
" }
" -------

" PLUGS {
" call plug#begin(stdpath('data') . '/plugged')
" Plug 'vim-ruby/vim-ruby'
" Plug 'sunjon/shade.nvim'
" Plug 'blueyed/vim-diminactive'
" Plug 'folke/trouble.nvim'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/nvim-cmp'
" Plug 'neovim/nvim-lspconfig'
" Plug 'williamboman/nvim-lsp-installer'
" Plug 'onsails/lspkind-nvim'
" Plug 'gruvbox-community/gruvbox'
" Plug 'kyazdani42/nvim-web-devicons'
" Plug 'kyazdani42/nvim-tree.lua'
" Plug 'lukas-reineke/indent-blankline.nvim'
" Plug 'tpope/vim-abolish'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'junegunn/fzf', { 'do': './install --bin' }
" Plug 'junegunn/fzf.vim'
" Plug 'nvim-telescope/telescope.nvim'
" Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-rails'
" Plug 'sevko/vim-nand2tetris-syntax'
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'skwp/greplace.vim'
" Plug 'tpope/vim-unimpaired'
" Plug 'preservim/vimux'
" Plug 'vim-test/vim-test'
" Plug 'overcache/NeoSolarized'
" Plug 'lifepillar/vim-solarized8'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'vim-ruby/vim-ruby'
" Plug 'kdheepak/tabline.nvim'
" Plug 'esamattis/slimux'
" Plug 'marko-cerovac/material.nvim'
" Plug 'tpope/vim-endwise'
" Plug 'nvim-lualine/lualine.nvim'
" call plug#end()
" }
" -------

" MAPS {
nnoremap <SPACE> <Nop>
let mapleader = " "

vnoremap <leader>c "*y
nnoremap <C-d> 30j
nnoremap <C-u> 30k
nmap <leader>ga :Git add %<cr>
nmap <leader>gb :Git blame<cr>
nmap <leader>gs :Git<cr>
nmap <leader>gr :Gread<cr>
nmap <leader>gcm :Git commit -m '

nnoremap <leader>x :x <cr>

"find and replace
nnoremap <leader>R :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <leader>w :wa <cr>
nnoremap <leader>q :q! <cr>
nnoremap <leader>Q :wqa! <cr>

" tab switching
" nnoremap <silent> <leader>tn :tabnew<cr>
" nnoremap <silent> <leader>tc :tabclose<cr>

" split switching
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" nnoremap sv <C-W>v
" nnoremap ss <C-W>s

nmap <leader>ga :Git add %<cr>
nmap <leader>gb :Git blame<cr>
nmap <leader>gs :Git<cr>
nmap <leader>gr :Gread<cr>
" toggle hlsearch
nnoremap <leader>hh :set hlsearch! hlsearch?<cr>
" nnoremap <leader>t :set relativenumber! relativenumber?<cr>
" map <leader>us :UltiSnipsEdit<cr>
nnoremap <leader>x :x <cr>

" split switching
nnoremap <leader>vv <C-W>v
nnoremap <leader>vs <C-W>s

" zoom in/out
nnoremap zi <c-w>o
nnoremap zo <c-w>=

" jk when wrapper on
nmap k gk
nmap j gj

nnoremap <leader>a :Ag<cr><SPACE>

" source settings
" noremap <silent> <leader>ss :source ~/.config/nvim/init.vim<cr>
" noremap <silent> <leader>sc :e ~/.config/nvim/init.vim<cr>

" nvim tree
nnoremap <silent> <cr> :NvimTreeFindFile<cr><c-w>=<cr>
nnoremap <silent> <leader>e :NvimTreeToggle<cr>
" -------


" VIEW {
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set t_Co=256
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
endi

" change shape of cursor bwt modes
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" render whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" misc
set number
set cursorline
" }
" -------

nnoremap <silent> <leader>dr :e README.md<cr>
nnoremap <silent> <leader>dg :e Gemfile<cr>
nnoremap <silent> <leader>dp :e Procfile_development<cr>
