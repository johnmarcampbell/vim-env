" Latex commands
autocmd BufNewFile,BufRead *.tex set makeprg=pdflatex\ %\ &&\ xdg-open\ %:r.pdf\ &&

" Add two spaces to the end of lines in Markdown files
au BufWrite *.md %s/\(\S\)\n/\1  \r/e | norm!``

