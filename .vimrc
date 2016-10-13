"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sections:                                                                  "
"   01. General ................. General Vim behavior                       "
"   02. Vim UI .................. User interface behavior                    "
"   04. Custom Commands ......... Any custom command aliases                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 01. General                                                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Check for local vim settings
if !empty(glob("~/.vimrc.local"))
	source ~/.vimrc.local
endif

"Start Pathogen, for managing plug-ins
"Install new plug-ins with: 
"	cd ~/.vim/bundle && \
"	git clone git://[Repo URL]

runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

let mapleader=","

source ~/.vim/pluginsettings.vim
source ~/.vim/autocmds.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 02. Vim UI                                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Mash 'jk' to leave interactive mode
inoremap jk <ESC>

set nu rnu "Show relative line numbers
set hidden
filetype on 
filetype plugin on 

set backspace=eol,start,indent "Proper backspace behavior
set clipboard=unnamedplus "Use system clipboard

"Split stuff
nnoremap <C-j> <C-w><C-J>
nnoremap <C-k> <C-w><C-K>
nnoremap <C-l> <C-w><C-L>
nnoremap <C-h> <C-w><C-H>
set splitbelow
set splitright

"Turns off arrow keys, to enforce using hjkl
nnoremap <up> :tabnew <CR> :ls <cr>
nnoremap <down> :tabclose <cr>
nnoremap <left> :tabprev <CR>
nnoremap <right> :tabnext <CR>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

"Fix regex handling
nnoremap / /\v
vnoremap / /\v

"Switch colon and semi-colon
nnoremap ; :
nnoremap : ;

"Ignores case unless search string is mixed case
set ignorecase
set smartcase

set gdefault "make replaces global by default

"Highlight search results
set incsearch
set showmatch
set hlsearch

colorscheme despacio 
syntax on

"Always display the status line
set laststatus=2

"Disable the mouse, except for the scroll wheel
set mouse=a
nnoremap <ScrollWheelUp> 3<C-y>
nnoremap <ScrollWheelDown> 3<C-e>
nnoremap <LeftMouse> <nop>
inoremap <LeftMouse> <nop>
noremap <LeftMouse> <nop>

"Make vim source my .bashrc
"set shell=/bin/bash\ --rcfile\ ~/.bashrc
set shell=/bin/bash\ -i
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 03. Text Formatting/Layout                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Tab stuff
set tabstop=4 "Length of a tab
set shiftwidth=4 "Auto-indent length
set softtabstop=4 "Spaces when you hit tab key
set smartindent
set expandtab "Change tabs to spaces

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 04. Custom Commands                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Write buffer
nnoremap <leader>w :w <cr>
"Write buffer and quit
nnoremap <leader>qw :wq <cr>
"No, really quit!
nnoremap <leader>qq :q! <cr>
"Open current file in new vertical split and switch to it
nnoremap <leader>sv <C-w>v<C-w>l
"Open current file in new horizontal split and switch to it
nnoremap <leader>sh <C-w>s<C-w>l
"Edit vimrc
nnoremap <leader>v :e $MYVIMRC <cr>
"Source vimrc
nnoremap <leader>so :source $MYVIMRC <cr>
"Display buffer list and prepare to switch
nnoremap <space> :ls <cr>
"Un-hilight search results
nnoremap <leader>n :noh <cr>

"rot13 the file
noremap <Leader>r mzggg?G`m
"Make
nnoremap <Leader>m :make<cr>

"Insert date/time
nnoremap <F5> "=strftime("%c")<CR>P
inoremap <F5> <C-R>=strftime("%c")<CR>
