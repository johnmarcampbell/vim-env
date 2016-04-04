"NERDTree
"Toggle NERDTree
nnoremap <leader>N :NERDTreeToggle <cr>

"Unite.vim
"Go to file list in insert mode
nnoremap <leader>f :Unite file_rec <cr>
nnoremap <leader>b :Unite buffer <cr>

"Fugitive
nnoremap <leader>gs :Gstatus <cr>
nnoremap <leader>gc :Gcommit <cr>
nnoremap <leader>gd :Gdiff <cr>

"UltiSnips
let g:UltiSnipsSnippetDirectories=["bundle/ultisnips"]
nnoremap <leader>ue :UltiSnipsEdit <cr>
