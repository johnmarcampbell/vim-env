""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sections:                                                                  "
"   01. General ................. General Vim behavior                       "
"   02. Vim UI .................. User interface behavior                    "
"   03. Text Formatting/Layout .. Text, tab, indentation related             "
"   04. Custom Commands ......... Any custom command aliases                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 01. General                                                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Start Pathogen, for managing plug-ins
"Install new plug-ins with: 
"	cd ~/.vim/bundle && \
"	git clone git://[Repo URL]

runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

set nocompatible "Disable compatibility with vi
let mapleader=","

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 02. Vim UI                                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Use 'jk' to leave interactive mode
inoremap jk <ESC>

set nu "Show line numbers

"Split stuff
nnoremap <C-j> <C-w><C-J>
nnoremap <C-k> <C-w><C-K>
nnoremap <C-l> <C-w><C-L>
nnoremap <C-h> <C-w><C-H>
set splitbelow
set splitright

"Turns off arrow keys, to enforce using hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

"Fix regex handling
nnoremap / /\v
vnoremap / /\v

"Ignores case unless search string is mixed case
set ignorecase
set smartcase

set gdefault "make replaces global by default

"Highlight search results
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 03. Text Formatting/Layout                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Tab stuff
set tabstop=4 "Length of a tab
set shiftwidth=4 "Auto-indent length
set softtabstop=4 "Spaces when you hit tab key
set smartindent
"set expandtab "Change tabs to spaces

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 04. Custom Commands                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Open current file in new vertical split and switch to it
nnoremap <leader>w <C-w>v<C-w>l
"Toggle NERDTree
nnoremap <leader>N :NERDTreeToggle <cr>
