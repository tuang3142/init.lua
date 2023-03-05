-- keymap

-- " MAPS {
-- " nnoremap <SPACE> <Nop>
-- " let mapleader = " "

-- nnoremap <silent> <leader>dr :e README.md<cr>
-- nnoremap <silent> <leader>dg :e Gemfile<cr>
-- nnoremap <silent> <leader>dp :e Procfile_development<cr>

-- vnoremap <leader>c "*y
-- nnoremap <C-d> 30j
-- nnoremap <C-u> 30k
-- nmap <leader>ga :Git add %<cr>
-- nmap <leader>gb :Git blame<cr>
-- nmap <leader>gs :Git<cr>
-- nmap <leader>gr :Gread<cr>
-- nmap <leader>gcm :Git commit -m '

-- nnoremap <leader>x :x <cr>

-- "find and replace
-- nnoremap <leader>R :%s/\<<C-r><C-w>\>//g<Left><Left>
-- nnoremap <leader>w :wa <cr>
-- nnoremap <leader>q :q! <cr>
-- nnoremap <leader>Q :wqa! <cr>

-- " tab switching
-- " nnoremap <silent> <leader>tn :tabnew<cr>
-- " nnoremap <silent> <leader>tc :tabclose<cr>

-- " split switching
-- nnoremap <C-J> <C-W><C-J>
-- nnoremap <C-K> <C-W><C-K>
-- nnoremap <C-L> <C-W><C-L>
-- nnoremap <C-H> <C-W><C-H>
-- " nnoremap sv <C-W>v
-- " nnoremap ss <C-W>s

-- nmap <leader>ga :Git add %<cr>
-- nmap <leader>gb :Git blame<cr>
-- nmap <leader>gs :Git<cr>
-- nmap <leader>gr :Gread<cr>
-- " toggle hlsearch
-- nnoremap <leader>hh :set hlsearch! hlsearch?<cr>
-- " nnoremap <leader>t :set relativenumber! relativenumber?<cr>
-- " map <leader>us :UltiSnipsEdit<cr>
-- nnoremap <leader>x :x <cr>

-- " split switching
-- nnoremap <leader>vv <C-W>v
-- nnoremap <leader>vs <C-W>s

-- " zoom in/out
-- nnoremap zi <c-w>o
-- nnoremap zo <c-w>=

-- " jk when wrapper on
-- nmap k gk
-- nmap j gj

-- nnoremap <leader>a :Ag<cr><SPACE>

-- " source settings
-- " noremap <silent> <leader>ss :source ~/.config/nvim/init.vim<cr>
-- " noremap <silent> <leader>sc :e ~/.config/nvim/init.vim<cr>

-- " nvim tree
-- nnoremap <silent> <cr> :NvimTreeFindFile<cr><c-w>=<cr>
-- nnoremap <silent> <leader>e :NvimTreeToggle<cr>
-- " -------
-- "  }

vim.g.mapleader = " "
