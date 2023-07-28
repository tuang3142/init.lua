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

" MAPS {
" nnoremap <SPACE> <Nop>
" let mapleader = " "

nnoremap <silent> <leader>dr :e README.md<cr>
nnoremap <silent> <leader>dg :e Gemfile<cr>
nnoremap <silent> <leader>dp :e Procfile_development<cr>

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

" nnoremap <leader>a :Ag<cr><SPACE>

" source settings
" noremap <silent> <leader>ss :source ~/.config/nvim/init.vim<cr>
" noremap <silent> <leader>sc :e ~/.config/nvim/init.vim<cr>

" nvim tree
" nnoremap <silent> <cr> :NvimTreeFindFile<cr><c-w>=<cr>
nnoremap <silent> <cr> :NvimTreeFindFile<cr>
nnoremap <silent> <leader>e :NvimTreeToggle<cr>
" -------
"  }


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

