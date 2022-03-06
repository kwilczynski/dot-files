call plug#begin('~/.vim/plugged')
let g:plug_timeout = 120
let g:plug_retries = 4

Plug 'sheerun/vim-polyglot'

" Disabled. No longer maintained?
"Plug 'ayu-theme/ayu-vim'
Plug 'Luxed/ayu-vim'
let ayucolor = 'mirage'

Plug 'kopischke/vim-stay'

Plug 'Yggdroot/indentLine'
let g:indentLine_enabled = 0
let g:indentLine_char = '┆'
let g:indentLine_first_char = '┆'
let g:indentLine_setColors = 0
let g:indentLine_showFirstIndentLevel = 1

Plug 'simnalamburt/vim-mundo'

Plug 'jlanzarotta/bufexplorer'

Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

Plug 'tjdevries/overlength.vim'
let g:overlength#default_overlength = 120
let g:overlength#default_to_textwidth = 1

Plug 'airblade/vim-gitgutter'
let g:gitgutter_enabled = 1

Plug 'scrooloose/nerdtree'
let g:NERDTreeMouseMode = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeIgnore = ['^node_modules$']

Plug 'majutsushi/tagbar'

Plug 'godlygeek/tabular'

Plug 'mg979/vim-visual-multi'

Plug 'junegunn/vim-easy-align'

Plug 'ntpeters/vim-better-whitespace'
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1
let g:show_spaces_that_precede_tabs = 1
let g:better_whitespace_skip_empty_lines = 1

Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

Plug 'fatih/vim-go'
let g:go_doc_popup_window = 1
let g:go_doc_popup_border = ['─', '│', '─', '│', '╭', '╮', '╯', '╰']
let g:go_info_mode = 'gopls'
let g:go_def_mode = 'gopls'
let g:go_imports_mode = 'gopls'
let g:go_fmt_autosave = 1
let g:go_fmt_command = 'goimports'
let g:go_snippet_engine = 'ultisnips'
let g:go_addtags_transform = 'snakecase'
let g:go_list_type = 'quickfix'
let g:go_list_autoclose = 1
let g:go_auto_type_info = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_gocode_propose_source = 1
let g:go_gocode_unimported_packages = 1

Plug 'maralla/completor.vim'
let g:completor_auto_trigger = 1

Plug 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabClosePreviewOnPopupClose = 1
let g:SuperTabRetainCompletionType = 2
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc','&completefunc']

Plug 'AndrewRadev/linediff.vim'

Plug 'w0rp/ale'
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_sign_warning = '⚠'
let g:ale_sign_error = '⤫'
let g:ale_linters = { 'rust': [ 'analyzer', 'cargo' ] }
let g:ale_fixers = { 'rust': [ 'rustfmt' ] }
let g:ale_rust_cargo_use_clippy = 1

Plug 'sebdah/vim-delve'

Plug 'vim-ruby/vim-ruby'

Plug 'rust-lang/rust.vim'
let g:rustfmt_autosave = 1

Plug 'pangloss/vim-javascript'

Plug 'elzr/vim-json'
let g:vim_json_syntax_conceal = 0

Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_fenced_languages = ['go=go', 'viml=vim', 'bash=sh']

Plug 'hashivim/vim-vagrant'

Plug 'hashivim/vim-terraform'
let g:terraform_align = 1
let g:terraform_fmt_on_save = 1
let g:terraform_fold_sections = 0
let g:terraform_remap_spacebar = 0
call plug#end()

set nocompatible
set modeline

nnoremap <Space> <Nop>
let mapleader = "\<Space>"
let maplocalleader = "\\"

set timeoutlen=1000
set ttimeoutlen=100

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

set virtualedit=block,onemore

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
set ttymouse=xterm2

set t_Co=256
set term=xterm-256color
if (has("termguicolors"))
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

syntax enable
syntax sync fromstart
syntax sync minlines=250

set synmaxcol=4096

set background=dark
colorscheme ayu

filetype plugin on
filetype indent on

set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8
set textwidth=120
set history=128

set scrolloff=3

set shortmess+=c
set shortmess+=I
set belloff+=ctrlg

set viminfo=%,'50,\"1000,/50,:50,h,f0,n~/.vim/.viminfo

set formatoptions+=1
set formatoptions+=n
set formatoptions+=j

set showbreak=↪\
set fillchars+=vert:│
set listchars+=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:❯,precedes:❮

set completeopt-=preview

set clipboard^=unnamed
set clipboard^=unnamedplus

set maxmempattern=20480

set iskeyword+=_,$,@,%,#

set wildmenu
set wildmode=list:longest,full

set wildignore+=.svn,.git
set wildignore+=*.bmp,*.gif,*.png,*.jpg,*.jpeg,*.woff,*.ttf,*.svg,*.eot
set wildignore+=*.o,*.obj,*.exe,*.dll
set wildignore+=*.sw?
set wildignore+=*.DS_Store

set signcolumn=yes

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
set ttyscroll=3

set noerrorbells

set nostartofline

set pastetoggle=<F5>

set undoreload=65535
set undofile

set backup

set updatetime=100

set viewoptions=cursor,folds,slash,unix

set spelllang=en_gb,en_us,en

set laststatus=2

set switchbuf=usetab

set statusline=
set statusline+=[%n]\ %<%F%{exists('g:loaded_fugitive')?fugitive#statusline():''}%M%R%H%W
set statusline+=\ %=%Y
set statusline+=\ %{toupper(strlen(&ff)?&ff:'none')}
set statusline+=\ %{toupper(strlen(&fenc)?&fenc:'none')}
set statusline+=\ %c,%l/%L\ %p%%
set statusline+=\ ~\ %{strftime(\"%d/%m/%Y\ %T\",getftime(expand(\"%:p\")))}

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

function! SudoSaveAction()
    let answer = confirm('Save with sudo?', "&Yes\n&No", 2)
    if answer == 1
        :execute ':silent w !sudo tee % >/dev/null' | :edit!
    else
        :execute ':silent w'
    endif
    redraw
endfunction

command W call SudoSaveAction()
command Wq :execute ':W' | :q
command WQ :Wq

command Jq  :execute '%!jq . 2>/dev/null'

vnoremap r "_dP

nnoremap <silent> <leader>\| :vsplit<CR>
nnoremap <silent> <leader>- :split<CR>
nnoremap <silent> <leader><left>  <c-w><c-h>
nnoremap <silent> <leader><right> <c-w><c-l>
nnoremap <silent> <leader><up>    <c-w><c-k>
nnoremap <silent> <leader><down>  <c-w><c-j>

nnoremap <silent> zj o<esc>k
nnoremap <silent> zk O<esc>j

nnoremap <silent> <F1> <nop>

nnoremap <silent> <F3> :GitGutterToggle<CR>
nnoremap <silent> <F2> :ToggleBufExplorer<CR>
nnoremap <silent> <F4> :set invspell spell?<CR><Bar>:echo "Spell check: " . strpart("OffOn", 3 * &spell, 3)<CR>
nnoremap <silent> <F5> :set invpaste paste?<CR><Bar>:echo "Paste mode: " . strpart("OffOn", 3 * &paste, 3)<CR>
nnoremap <silent> <F6> :IndentLinesToggle<CR>
nnoremap <silent> <F7> :MundoToggle<CR>
nnoremap <silent> <F8> :NERDTreeToggle<CR>
nnoremap <silent> <F9> :TagbarToggle<CR>
nnoremap <silent> <F10> :set invnumber number?<CR><Bar>:echo "Line numbers: " . strpart("OffOn", 3 * &number, 3)<CR>
nnoremap <silent> <F11> :set invlist list?<CR><Bar>:echo "Show invisible: " . strpart("OffOn", 3 * &list, 3)<CR>

nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction

augroup configgroup
    autocmd!

    autocmd StdinReadPre * let s:std_in=1

    autocmd VimEnter * highlight clear SignColumn
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

    autocmd BufEnter * if &filetype == "" | setlocal filetype=text | endif
    autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | quit | endif

    autocmd BufRead,BufNewFile *.txt set filetype=text
    autocmd BufRead,BufNewFile *.sls set filetype=yaml
    autocmd BufRead,BufNewFile *.hcl set filetype=terraform
    autocmd BufRead,BufNewFile *.gotmpl set filetype=gotexttmpl
    " Disabled.  Breaks editing Git commits.
    "autocmd BufRead,BufNewFile COMMIT_EDITMSG set filetype=gitcommit

    autocmd FileType text setlocal formatoptions-=t textwidth=0
    autocmd FileType mail DisableWhitespace
    autocmd FileType mail colorscheme slate
    autocmd FileType mail setlocal textwidth=75 noautoindent nolist nonumber noexpandtab digraph wrapmargin=0 shiftwidth=8 tabstop=8 softtabstop=8
    autocmd FileType git,gitcommit,gitsendemail DisableWhitespace
    autocmd FileType git,gitcommit,gitsendemail colorscheme slate
    autocmd FileType git,gitcommit,gitsendemail setlocal textwidth=72 foldmethod=syntax foldlevel=1
    autocmd FileType vim setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4
    autocmd FileType sh,bash setlocal formatoptions-=t expandtab shiftwidth=4 tabstop=8 softtabstop=4 commentstring=#\ %s
    autocmd FileType rb,ruby setlocal formatoptions-=t expandtab textwidth=120 shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType py,python setlocal formatoptions-=t expandtab textwidth=80 shiftwidth=4 tabstop=8 softtabstop=4
    autocmd FileType php setlocal formatoptions-=t expandtab shiftwidth=4 tabstop=4 softtabstop=4
    autocmd FileType html,xhtml,xml,xslt setlocal formatoptions-=t expandtab shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType css setlocal formatoptions-=t expandtab shiftwidth=4 tabstop=4 softtabstop=4
    autocmd FileType js,javascript setlocal formatoptions-=t expandtab shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType cpp,hpp setlocal formatoptions-=t noexpandtab cindent textwidth=80 shiftwidth=8 tabstop=8 softtabstop=8 commentstring=//\ %s
    autocmd FileType c,h setlocal formatoptions-=t noexpandtab cindent textwidth=80 shiftwidth=8 tabstop=8 softtabstop=8 commentstring=/*\ %s
    autocmd FileType go setlocal formatoptions-=t noexpandtab textwidth=120 shiftwidth=8 tabstop=8 softtabstop=8
    autocmd FileType rs,rc setlocal formatoptions-=t expandtab textwidth=100 shiftwidth=4 tabstop=8 softtabstop=4
    autocmd FileType make setlocal formatoptions-=t noexpandtab shiftwidth=8 softtabstop=0
    autocmd FileType sql setlocal commentstring=--\ %s
    autocmd FileType yml,yaml setlocal formatoptions-=t expandtab shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType tf,hcl setlocal formatoptions-=t commentstring=#\ %s
    autocmd FileType vim setlocal formatoptions-=t commentstring=\"\ %s
augroup END
