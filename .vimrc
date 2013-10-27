execute pathogen#infect()

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
set nowrap
set nojoinspaces

set splitright
set splitbelow

set t_Co=256

syntax on
colorscheme slate

filetype plugin indent on

set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8
set textwidth=120
set nowritebackup
set nobackup
set history=128

set scrolloff=3

set viminfo='20,\"50
set formatoptions+=1
set formatoptions+=n

if v:version > 703
    set formatoptions+=j
endif

set clipboard+=unnamed

set iskeyword+=_,$,@,%,#

set wildmenu
set wildmode=list:longest,full

set lazyredraw
set linespace=0
set matchtime=5
set report=0

set nolist
set nonumber
set ignorecase
set infercase
set smartcase

set hidden
set autoread

set autochdir

set showmatch

set incsearch
set hlsearch

set ruler

set showmode

set backspace=indent,eol,start

set ttyfast

set noerrorbells

set nostartofline

set pastetoggle=<F5>

vnoremap r "_dP

nnoremap <silent> <F5> :set invpaste paste?<CR><Bar>:echo "Paste mode: " . strpart("OffOn", 3 * &paste, 3)<CR>
nnoremap <silent> <F10> :set invnumber number?<CR>
nnoremap <silent> <F11> :set invlist list?<CR>
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

if v:version >= 700 && has("spell")
    set spelllang=en_gb,en_us,en
    nnoremap <silent> <F4> :set invspell spell?<CR><Bar>:echo "Spell check: " . strpart("OffOn", 3 * &spell, 3)<CR>
endif

set laststatus=2

set statusline=[%n]\ %<%F%{fugitive#statusline()}%M%R%H%W
set statusline+=\ %=%Y
set statusline+=\ %{toupper(strlen(&ff)?&ff:'none')}
set statusline+=\ %{toupper(strlen(&fenc)?&fenc:'none')}
set statusline+=\ %c,%l/%L\ %p%%
set statusline+=\ ~\ %{strftime(\"%d/%m/%Y\ %T\",getftime(expand(\"%:p\")))}

autocmd FileType gitcommit setlocal textwidth=78
autocmd FileType vim setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4
autocmd FileType sh,bash setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4
autocmd FileType rb,ruby setlocal textwidth=120 expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType php setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType html,xhtml,xml,xslt setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType js,javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType c,cpp,cs,h,hpp,objc setlocal cindent textwidth=80 noexpandtab shiftwidth=4 tabstop=8 softtabstop=4
autocmd FileType go setlocal textwidth=120 noexpandtab shiftwidth=8 tabstop=8 softtabstop=8
