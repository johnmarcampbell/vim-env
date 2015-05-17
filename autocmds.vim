"Line-wise commenting for various file types
autocmd FileType sh nnoremap <buffer> <leader>cl 0i#<esc>
autocmd FileType cpp nnoremap <buffer> <leader>cl 0i//<esc>
autocmd FileType xml nnoremap <buffer> <leader>cl 0i<!--<esc>$a-->

"Block commenting for various file types
autocmd FileType sh vnoremap <buffer> <leader>cb <esc>:'<,'>s/^/#<cr>
autocmd FileType cpp vnoremap <buffer> <leader>cb <esc>`<O/*<esc>`>o*/<esc>
autocmd FileType xml vnoremap <buffer> <leader>cb <esc>`<O<!--<esc>`>o--><esc>
