"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sections:                                                                  "
"   01. General ................. General Vim behavior                       "
"   02. Vim UI .................. User interface behavior                    "
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

let mapleader=","

source ~/.vim/pluginsettings.vim
source ~/.vim/autocmds.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 02. Vim UI                                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Mash 'jk' to leave interactive mode
inoremap jk <ESC>
inoremap kj <ESC>

set nu rnu "Show relative line numbers
set hidden
filetype on 

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
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

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

colorscheme monokai 
syntax on
" If there is a false on GUI returned, then load the terminal scheme {
    if has("gui_running")
    
        set guioptions-=m       " remove menu bar
        set guioptions-=T       " remove toolbar
        set guioptions-=r       " remove right-hand scroll bar
        set guioptions-=L       " remove left-hand scroll bar
        set guioptions=c

		set noerrorbells		" unset alarm bell
		set vb					" unset alarm bell
		set t_vb="."			" unset alarm bell
    endif
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
"Open current file in new vertical split and switch to it
nnoremap <leader>sv <C-w>v<C-w>l
"Open current file in new horizontal split and switch to it
nnoremap <leader>sh <C-w>s<C-w>l
"Edit vimrc
nnoremap <leader>v :vsplit $MYVIMRC <cr>
"Source vimrc
nnoremap <leader>so :source $MYVIMRC <cr>
