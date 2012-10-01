set nocompatible
set showcmd

set autoindent
set smartindent
set copyindent
set preserveindent
set shiftround

set background=dark
set virtualedit=block

set shiftwidth=2
set softtabstop=2
set tabstop=8
set expandtab
set smarttab

syntax on

filetype on
filetype plugin on
filetype indent on

set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8
set textwidth=120
set nowritebackup
set nobackup
set history=128

set viminfo='20,\"50
set formatoptions+=1

set wildmenu
set wildmode=list:longest,full

set number
set ignorecase
set smartcase

set nohidden

set autochdir

set showmatch

set incsearch
set hlsearch

set ruler

set showmode

set backspace=indent,eol,start

set ttyfast

set noerrorbells

set pastetoggle=<F5>

nnoremap <silent> <F5> :set invpaste paste?<CR>
nnoremap <silent> <F10> :set invnumber number?<CR>

nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

if version >= 700
    set spelllang=en_GB,en_US,en
endif

autocmd FileType vim setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4
autocmd FileType sh,bash setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4
autocmd FileType rb,ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType php setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType html,xhtml,xml,xslt setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType js,javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType c,cpp,cs,h,hpp,objc setlocal cindent textwidth=80 expandtab shiftwidth=4 tabstop=8 softtabstop=4
