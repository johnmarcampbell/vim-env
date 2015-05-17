"Line-wise commenting for various file types
autocmd FileType sh nnoremap <buffer> <leader>cl 0i#<esc>
autocmd FileType vim nnoremap <buffer> <leader>cl 0i"<esc>
autocmd FileType cpp nnoremap <buffer> <leader>cl 0i//<esc>
autocmd FileType xml nnoremap <buffer> <leader>cl 0i<!-- <esc>$a --> <esc>

"Block commenting for various file types
autocmd FileType sh vnoremap <buffer> <leader>cb <esc>:'<,'>s/^/#<cr> :noh<cr>
autocmd FileType vim vnoremap <buffer> <leader>cb <esc>:'<,'>s/^/"<cr> :noh<cr>
autocmd FileType cpp vnoremap <buffer> <leader>cb <esc>`<O/*<esc>`>o*/<esc>
autocmd FileType xml vnoremap <buffer> <leader>cb <esc>`<0O<!--<esc>`>0o--><esc>
