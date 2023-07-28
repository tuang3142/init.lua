let g:fzf_files_options =
  \ '--reverse ' .
  \ '--preview "(coderay {} || cat {}) 2> /dev/null | head -'.&lines.'"'
let g:fzf_layout = { 'down': '~50%' }
" nnoremap <C-p> :Files<cr>
let $FZF_DEFAULT_COMMAND = 'ag -g "" --hidden'

" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Todo', 'border': 'sharp' } }
" " Creates a floating window with a most recent buffer to be used
" function! CreateCenteredFloatingWindow()
"     let width = float2nr(&columns * 0.75)
"     let height = float2nr(&lines * 0.6)
"     let top = ((&lines - height) / 2) - 1
"     let left = (&columns - width) / 2
"     let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    " let top = "╭" . repeat("─", width - 2) . "╮"
    " let mid = "│" . repeat(" ", width - 2) . "│"
    " let bot = "╰" . repeat("─", width - 2) . "╯"
    " let lines = [top] + repeat([mid], height - 2) + [bot]
    " let s:buf = nvim_create_buf(v:false, v:true)
    " call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    " call nvim_open_win(s:buf, v:true, opts)
    " set winhl=Normal:Floating
    " let opts.row += 1
    " let opts.height -= 2
    " let opts)))))))).col += 2
    " let opts.width -= 4
    " call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    " au BufWipeout <buffer> exe 'bw '.s:buf
" endfun))))))ction

" function! s:OpenLazyGit() abort
"     call OpenTerm('lazygit')
" endfunction

" function! OpenTerm(cmd)
"     call CreateCenteredFloatingWindow()
"     call termopen(a:cmd, { 'on_exit': function('OnTermExit') })
" endfunction

" nnoremap <leader>gi :call <sid>OpenLazyGit()<cr>

" let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }

" TODO
nnoremap <leader>fa :Files app/<cr>
nnoremap <leader>fm :Files app/models/<cr>
nnoremap <leader>fv :Files app/views/<cr>
nnoremap <leader>fc :Files app/controllers/<cr>
nnoremap <leader>fb :Files spec/fabricators/<cr>
nnoremap <leader>fr :Files spec/requests/<cr>
nnoremap <leader>fy :Files app/assets/stylesheets/<cr>
nnoremap <leader>fj :Files app/assets/javascripts/<cr>
nnoremap <leader>fs :Files spec/<cr>
nnoremap <leader>. :Files %:p:h<cr>

" TODO: search todo, search like telescope
nnoremap <silent> <leader>p :Files<cr>
nnoremap <silent> <leader>i :GFiles<cr>
nnoremap <silent> <leader>b :Buffers<cr>
nnoremap <silent> <leader>r :History<cr>
nnoremap <silent> <leader>l :Line<cr>
nnoremap <silent> <leader>l :Lines<cr>

" vim:ft=vim
