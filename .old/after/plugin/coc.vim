let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-tailwindcss',
  \ 'coc-elixir',
  \ 'coc-svelte',
  \ 'coc-html',
  \ 'coc-yaml',
  \ 'coc-vimlsp',
  \ 'coc-svg',
  \ 'coc-actions',
  \ 'coc-lists',
  \ 'coc-json',
  \ 'coc-yank',
  \ 'coc-solargraph',
  \ ]

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/stylelint')
  let g:coc_global_extensions += ['coc-stylelintplus']
endif

function! s:check_eslint()
  if !isdirectory('./node_modules') || !isdirectory('./node_modules/eslint')
    call coc#config('eslint', {
    \ 'enable': v:false,
    \ })
  endif
endfunction

autocmd BufEnter *.{js,jsx,ts,tsx} :call <SID>check_eslint()

function! s:RestartCoc() abort
  silent! CocRestart
  echohl String | echom 'Restarting COC...' | echohl None
endfunction
command! RestartCoc call s:RestartCoc()
command! -nargs=0 Format :call CocActionAsync('format')
nnoremap <leader>cf :Format<cr>
" nnoremap <leader>re :RestartCoc<cr>

" let g:coc_snippet_next = '<tab>'

" nnoremap <leader>es :vsplit<cr>:CocCommand snippets.editSnippets<cr>

nmap <silent> <C-]> <Plug>(coc-definition)
nmap <leader>do <Plug>(coc-codeaction)

" Jump to next / previous error
nmap <silent> [r <Plug>(coc-diagnostic-prev)
nmap <silent> ]r <Plug>(coc-diagnostic-next)

" show documentation
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
nnoremap <silent> K :call <SID>show_documentation()<CR>

" show error, otherwise documentation, on hold
function! ShowDocIfNoDiagnostic(timer_id)
  " if (coc#util#has_float() == 0)
  silent call CocActionAsync('doHover')
  " endif
endfunction
function! s:show_hover_doc()
  call timer_start(200, 'ShowDocIfNoDiagnostic')
endfunction
nnoremap <leader>k :call <SID>show_hover_doc()<cr>

set updatetime=300
set signcolumn=yes
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" set highlight CocFloating ctermbg=White
" set highlight CocFloating ctermfg=DarkBlue

" " vim:ft=vim
