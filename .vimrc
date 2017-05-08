imap jj 

" NOTE: do not delete trailing ^M characters
map mm :make
map  :cn
map  :cp


map <C-j> <C-W>j<C-W>
map <C-k> <C-W>k<C-W>
map <C-h> <C-W>h<C-W>
map <C-l> <C-W>l<C-W>

set background=dark
set makeprg=make
set mouse=

set ts=4 sw=4
set ai hlsearch ruler
set laststatus=2
set expandtab

set wildmode=list:longest
set wildignore=*.*_o,*.*_dep,*.a,*.depend.*

syntax on

" Tab settings for Makefiles
autocmd BufEnter ?akefile* setlocal noet ts=8 sts=8 sw=8

" =========================

" Load plugins from .vim/bundles using .vim/autoload/pathogen.vim
call pathogen#incubate()

filetype off " On some Linux systems, this is necessary to make sure pathogen
             " picks up ftdetect directories in plugins! :(
syntax on
filetype plugin indent on

set gfn=Source\ Code\ Pro:h11

if &t_Co > 2 || has("gui_running")
        syntax on
        colorscheme jellybeans
endif
