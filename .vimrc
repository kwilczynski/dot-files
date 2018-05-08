call plug#begin('~/.vim/plugged')
let g:plug_timeout = 120
let g:plug_retries = 4

Plug 'dracula/vim'

Plug 'tomasr/molokai'
let g:rehash256 = 1

Plug 'altercation/vim-colors-solarized'
let g:solarized_termcolors = 256

Plug 'Yggdroot/indentLine'
let g:indentLine_enabled = 0
nnoremap <silent> <F6> :IndentLinesToggle<CR>

Plug 'simnalamburt/vim-mundo'
inoremap <silent> <F7> <ESC>:MundoToggle<CR>
nnoremap <silent> <F7> :MundoToggle<CR>
vnoremap <silent> <F7> <ESC>:MundoToggle<CR>

Plug 'jlanzarotta/bufexplorer'
nnoremap <silent> <F2> :ToggleBufExplorer<CR>

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'Townk/vim-autoclose'

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

Plug 'airblade/vim-gitgutter'
let g:gitgutter_enabled = 1
nnoremap <silent> <F3> :GitGutterToggle<CR>

Plug 'scrooloose/nerdtree'
let g:NERDTreeMouseMode = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen = 1
nnoremap <silent> <F8> :NERDTreeToggle<CR>

Plug 'majutsushi/tagbar'
nnoremap <silent> <F9> :TagbarToggle<CR>

Plug 'godlygeek/tabular'
Plug 'kopischke/vim-fetch'

Plug 'terryma/vim-multiple-cursors'

Plug 'mileszs/ack.vim'

Plug 'junegunn/fzf.vim'
nnoremap <silent> <C-f> :FZF<CR>

Plug 'ctrlpvim/ctrlp.vim'

Plug 'fatih/vim-go'
let g:go_snippet_engine = 'ultisnips'
let g:go_fmt_command = 'goimports'
let g:go_addtags_transform = 'snakecase'
let g:go_auto_type_info = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_types = 1

Plug 'Shougo/neocomplete.vim'
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_close_preview = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/linediff.vim'
Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = "<S-TAB>"

Plug 'w0rp/ale'
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

Plug 'Shougo/vimshell'
Plug 'sebdah/vim-delve'

Plug 'vim-ruby/vim-ruby'

Plug 'rust-lang/rust.vim'
Plug 'pangloss/vim-javascript'

Plug 'elzr/vim-json'
Plug 'gabrielelana/vim-markdown'

Plug 'hashivim/vim-vagrant'
Plug 'hashivim/vim-terraform'
let g:terraform_align = 1
let g:terraform_fmt_on_save = 1
let g:terraform_fold_sections = 0
let g:terraform_remap_spacebar = 0
call plug#end()

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

set mouse=a
set ttymouse=sgr

set t_Co=256
"set termguicolors

syntax enable
syntax sync minlines=250

set background=dark
colorscheme molokai

filetype plugin indent on

set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8
set textwidth=120
set history=128

set scrolloff=3

set viminfo='20,\"50
set formatoptions+=1
set formatoptions+=n

if v:version > 703
    set formatoptions+=j
endif

set completeopt-=preview

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

"set cursorline

set backspace=indent,eol,start

set ttyfast

set noerrorbells

set nostartofline

set pastetoggle=<F5>

set undoreload=65535
set undofile

set backup

"set noswapfile

set undodir=~/.vim/undo//
if !isdirectory(expand(&undodir))
  call mkdir(expand(&undodir), "p")
endif

set backupdir=~/.vim/backup//
if !isdirectory(expand(&backupdir))
  call mkdir(expand(&backupdir), "p")
endif

set directory=~/.vim/swap//
if !isdirectory(expand(&directory))
  call mkdir(expand(&directory), "p")
endif

if has('nvim')
else
    command W  :execute ':silent w !sudo tee % >/dev/null' | :edit!
    command Wq :execute ':W' | :q
    command WQ :Wq
endif

command Jq  :execute '%!jq . 2>/dev/null'

vnoremap r "_dP

if v:version >= 700 && has("spell")
    set spelllang=en_gb,en_us,en
    nnoremap <silent> <F4> :set invspell spell?<CR><Bar>:echo "Spell check: " . strpart("OffOn", 3 * &spell, 3)<CR>
endif

nnoremap <silent> <F5> :set invpaste paste?<CR><Bar>:echo "Paste mode: " . strpart("OffOn", 3 * &paste, 3)<CR>
nnoremap <silent> <F10> :set invnumber number?<CR><Bar>:echo "Line numbers: " . strpart("OffOn", 3 * &number, 3)<CR>
nnoremap <silent> <F11> :set invlist list?<CR><Bar>:echo "Show invisible: " . strpart("OffOn", 3 * &list, 3)<CR>
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

if has("gui_macvim")
    colorscheme solarized
endif

set runtimepath+=/usr/local/opt/fzf

set laststatus=2

set statusline=[%n]\ %<%F%{exists('g:loaded_fugitive')?fugitive#statusline():''}%M%R%H%W
set statusline+=\ %=%Y
set statusline+=\ %{toupper(strlen(&ff)?&ff:'none')}
set statusline+=\ %{toupper(strlen(&fenc)?&fenc:'none')}
set statusline+=\ %c,%l/%L\ %p%%
set statusline+=\ ~\ %{strftime(\"%d/%m/%Y\ %T\",getftime(expand(\"%:p\")))}

function! <SID>StripTrailingWhitespaces()
    let s = @/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/ = s
    call cursor(l, c)
endfunction

augroup configgroup
    autocmd!

    autocmd StdinReadPre * let s:std_in=1

    autocmd VimEnter * highlight clear SignColumn
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

    autocmd BufWritePre *.sh,*.bash :call <SID>StripTrailingWhitespaces()
    autocmd BufWritePre *.c,*.cs,*.cpp,*.h,*.hpp,*.objc,*.java,*.rs,*.rc :call <SID>StripTrailingWhitespaces()
    autocmd BufWritePre *.php,*.py,*.rb,*.erb,*.rake,*.js,*.css :call <SID>StripTrailingWhitespaces()
    autocmd BufWritePre *.yml,*.yaml,*.json,*.toml,*.tf,*.tfvars :call <SID>StripTrailingWhitespaces()
    autocmd BufWritePre Rakefile,Gemfile,Capfile,Makefile :call <SID>StripTrailingWhitespaces()

    autocmd BufEnter * if &filetype == "" | setlocal filetype=text | endif
    autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | quit | endif

    autocmd BufRead,BufNewFile *.txt set filetype=text
    autocmd BufRead,BufNewFile *.sls set filetype=yaml

    autocmd FileType text setlocal formatoptions-=t textwidth=0
    autocmd FileType gitcommit setlocal textwidth=80
    autocmd FileType vim setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4
    autocmd FileType sh,bash setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4
    autocmd FileType rb,ruby setlocal expandtab textwidth=120 shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType py,python setlocal expandtab textwidth=80 shiftwidth=4 tabstop=8 softtabstop=4
    autocmd FileType php setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
    autocmd FileType html,xhtml,xml,xslt setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
    autocmd FileType js,javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType c,cpp,cs,h,hpp,objc setlocal noexpandtab cindent textwidth=80 shiftwidth=4 tabstop=8 softtabstop=4
    autocmd FileType go setlocal noexpandtab textwidth=120 shiftwidth=8 tabstop=8 softtabstop=8
    autocmd FileType rs,rc setlocal expandtab textwidth=100 shiftwidth=4 tabstop=8 softtabstop=4
    autocmd FileType make setlocal noexpandtab shiftwidth=8 softtabstop=0
    autocmd FileType yml,yaml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
augroup END
