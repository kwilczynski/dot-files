execute pathogen#infect()

set nocompatible
set modeline

set guioptions-=T
set guioptions-=r
set guioptions-=L

set winaltkeys=no

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
set nofoldenable

set splitright
set splitbelow

set t_Co=256

syntax on
"colorscheme slate
colorscheme dracula

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

set wildignore+=.svn,.git
set wildignore+=*.bmp,*.gif,*.png,*.jpg,*.jpeg,*.woff,*.ttf,*.svg,*.eot
set wildignore+=*.o,*.obj,*.exe,*.dll
set wildignore+=*.sw?
set wildignore+=*.DS_Store

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

if has('nvim')
else
    command W  :execute ':silent w !sudo tee % >/dev/null' | :edit!
    command Wq :execute ':W' | :q
    command WQ :Wq
endif

command Jq  :execute '%!jq . 2>/dev/null'

vnoremap r "_dP

nnoremap <silent> <F3> :GitGutterToggle<CR>

if v:version >= 700 && has("spell")
    set spelllang=en_gb,en_us,en
    nnoremap <silent> <F4> :set invspell spell?<CR><Bar>:echo "Spell check: " . strpart("OffOn", 3 * &spell, 3)<CR>
endif

nnoremap <silent> <F5> :set invpaste paste?<CR><Bar>:echo "Paste mode: " . strpart("OffOn", 3 * &paste, 3)<CR>
nnoremap <silent> <F10> :set invnumber number?<CR>
nnoremap <silent> <F11> :set invlist list?<CR>
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nnoremap <silent> <C-n> :NERDTreeToggle<CR>

if has("gui_macvim")
    colorscheme solarized
endif

set laststatus=2

set statusline=[%n]\ %<%F%{fugitive#statusline()}%M%R%H%W
set statusline+=\ %=%Y
set statusline+=\ %{toupper(strlen(&ff)?&ff:'none')}
set statusline+=\ %{toupper(strlen(&fenc)?&fenc:'none')}
set statusline+=\ %c,%l/%L\ %p%%
set statusline+=\ ~\ %{strftime(\"%d/%m/%Y\ %T\",getftime(expand(\"%:p\")))}

let NERDTreeMinimalUI = 1
let NERDTreeShowHidden = 1
let NERDTreeQuitOnOpen = 1

let g:gitgutter_enabled = 0

autocmd StdinReadPre * let s:std_in=1

autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd BufEnter * if &filetype == "" | setlocal filetype=text | endif
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | quit | endif

autocmd FileType text setlocal formatoptions-=t textwidth=0
autocmd FileType gitcommit setlocal textwidth=80
autocmd FileType vim setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4
autocmd FileType sh,bash setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4
autocmd FileType rb,ruby setlocal textwidth=120 expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType py,python setlocal textwidth=80 expandtab shiftwidth=4 tabstop=8 softtabstop=4
autocmd FileType php setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType html,xhtml,xml,xslt setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType js,javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType c,cpp,cs,h,hpp,objc setlocal cindent textwidth=80 noexpandtab shiftwidth=4 tabstop=8 softtabstop=4
autocmd FileType go setlocal textwidth=120 noexpandtab shiftwidth=8 tabstop=8 softtabstop=8
autocmd FileType rs,rc setlocal textwidth=100 expandtab shiftwidth=4 tabstop=8 softtabstop=4
autocmd FileType make setlocal noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType yml,yaml setlocal ts=2 sts=2 sw=2 expandtab

autocmd BufRead,BufNewFile *.txt set filetype=text
autocmd BufRead,BufNewFile *.sls set filetype=yaml
