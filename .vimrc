call plug#begin('~/.vim/plugged')
let g:plug_timeout = 120
let g:plug_retries = 4

" Temporarily disabled.
"Plug 'dracula/vim'

" Temporarily disabled.
"Plug 'tomasr/molokai'
"Plug 'fatih/molokai'
"let g:rehash256 = 1

" Temporarily disabled.
"Plug 'altercation/vim-colors-solarized'
"let g:solarized_termcolors = 256

" Temporarily disabled.
"Plug 'morhetz/gruvbox'
"let g:gruvbox_contrast_dark = 'hard'

" Temporarily disabled.
"Plug 'ayu-theme/ayu-vim'
"let ayucolor = 'mirage'

" Temporarily disabled.
"Plug 'cocopon/iceberg.vim'
"
" Temporarily disabled.
"Plug 'arcticicestudio/nord-vim'
"let g:nord_italic = 1
"let g:nord_underline = 1
"let g:nord_italic_comments = 1
"let g:nord_cursor_line_number_background = 1

" Temporarily disabled.
"Plug 'wadackel/vim-dogrun'

Plug 'sonph/onehalf', { 'rtp': 'vim' }

" Temporarily disabled.
"Plug 'jacoborus/tender.vim'

Plug 'kopischke/vim-stay'

Plug 'Yggdroot/indentLine'
let g:indentLine_enabled = 0
let g:indentLine_char = '┆'
let g:indentLine_first_char = '┆'
let g:indentLine_setColors = 0
let g:indentLine_showFirstIndentLevel = 1
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

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

Plug 'jiangmiao/auto-pairs'

Plug 'airblade/vim-gitgutter'
let g:gitgutter_enabled = 1
nnoremap <silent> <F3> :GitGutterToggle<CR>

Plug 'scrooloose/nerdtree'
let g:NERDTreeMouseMode = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeIgnore = ['^node_modules$']
nnoremap <silent> <F8> :NERDTreeToggle<CR>

" Temporarily disabled.
"Plug 'ryanoasis/vim-devicons'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'majutsushi/tagbar'
nnoremap <silent> <F9> :TagbarToggle<CR>

Plug 'godlygeek/tabular'
Plug 'kopischke/vim-fetch'

Plug 'terryma/vim-multiple-cursors'

Plug 'ntpeters/vim-better-whitespace'
let g:better_whitespace_enabled = 1
let g:strip_whitespace_on_save = 1
let g:show_spaces_that_precede_tabs = 1
let g:better_whitespace_skip_empty_lines = 1

" Temporarily disabled.
"Plug 'mileszs/ack.vim'
"
" Temporarily disabled.
"Plug 'junegunn/fzf.vim'
"nnoremap <silent> <C-f> :FZF<CR>

Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Temporarily disabled.
"Plug 'vim-scripts/SearchComplete'

" Temporarily disabled.
"Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
"let g:go_gocode_unimported_packages = 1

" Temporarily disabled.
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
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

" Temporarily disabled.
"Plug 'govim/govim'

Plug 'maralla/completor.vim'
let g:completor_auto_trigger = 1

Plug 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabClosePreviewOnPopupClose = 1

" Temporarily disabled.
"Plug 'Shougo/neocomplete.vim'
"let g:acp_enableAtStartup = 0
"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#enable_smart_case = 1
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#enable_auto_close_preview = 1
"let g:neocomplete#sources#syntax#min_keyword_length = 3

Plug 'AndrewRadev/splitjoin.vim'
Plug 'AndrewRadev/linediff.vim'

" Temporarily disabled.
"Plug 'SirVer/ultisnips'
"let g:UltiSnipsExpandTrigger = "<S-TAB>"

Plug 'w0rp/ale'
let g:ale_sign_column_always = 1
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

Plug 'Shougo/vimshell'
Plug 'sebdah/vim-delve'

Plug 'vim-ruby/vim-ruby'

Plug 'rust-lang/rust.vim'
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
" Temporarily disabled.
"set ttymouse=sgr
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
" Temporarily disabled.
"colorscheme molokai
"colorscheme dogrun
"colorscheme ayu
colorscheme onehalfdark

filetype plugin indent on

set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8
set textwidth=120
set history=128

set scrolloff=3

set shortmess+=c
set belloff+=ctrlg

set viminfo='20,\"50

set formatoptions+=1
set formatoptions+=n
set formatoptions+=j
set colorcolumn=+1

set completeopt-=preview

"set clipboard+=unnamed
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

" Temporarily disabled.
"set cursorcolumn
"set cursorline

set backspace=indent,eol,start

set ttyfast
set ttyscroll=3

set noerrorbells

set nostartofline

set pastetoggle=<F5>

set undoreload=65535
set undofile

set backup

" Temporarily disabled.
"set noswapfile

set viewoptions=cursor,folds,slash,unix

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

if has('nvim')
else
    command W call SudoSaveAction()
    command Wq :execute ':W' | :q
    command WQ :Wq
endif

command Jq  :execute '%!jq . 2>/dev/null'

vnoremap r "_dP

nnoremap <silent> zj o<esc>k
nnoremap <silent> zk O<esc>j

nnoremap <silent> <F1> <nop>

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

" Temporarily disabled.
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" Temporarily disabled.
"function! Tab_Or_Complete() abort
"  if pumvisible()
"    return "\<C-N>"
"  elseif col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
"    return "\<C-R>=completor#do('complete')\<CR>"
"  else
"    return "\<Tab>"
"  endif
"endfunction

"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <expr> <Tab> Tab_Or_Complete()

" Temporarily disabled.
"if has("gui_macvim")
"   colorscheme solarized
"endif

set runtimepath+=/usr/local/opt/fzf

set laststatus=2

set statusline=[%n]\ %<%F%{exists('g:loaded_fugitive')?fugitive#statusline():''}%M%R%H%W
set statusline+=\ %=%Y
set statusline+=\ %{toupper(strlen(&ff)?&ff:'none')}
set statusline+=\ %{toupper(strlen(&fenc)?&fenc:'none')}
set statusline+=\ %c,%l/%L\ %p%%
set statusline+=\ ~\ %{strftime(\"%d/%m/%Y\ %T\",getftime(expand(\"%:p\")))}

" Temporarily disabled.
"function! <SID>StripTrailingWhitespaces()
"     let s = @/
"    let l = line(".")
"    let c = col(".")
"    %s/\s\+$//e
"    let @/ = s
"    call cursor(l, c)
"endfunction

augroup configgroup
    autocmd!

    autocmd StdinReadPre * let s:std_in=1

    autocmd VimEnter * highlight clear SignColumn
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

    " Temporarily disabled.
    "autocmd BufWritePre *.sh,*.bash :call <SID>StripTrailingWhitespaces()
    "autocmd BufWritePre *.c,*.cs,*.cpp,*.h,*.hpp,*.objc,*.java,*.rs,*.rc :call <SID>StripTrailingWhitespaces()
    "autocmd BufWritePre *.php,*.py,*.rb,*.erb,*.rake,*.js,*.css :call <SID>StripTrailingWhitespaces()
    "autocmd BufWritePre *.yml,*.yaml,*.json,*.toml,*.tf,*.tfvars,*.hcl :call <SID>StripTrailingWhitespaces()
    "autocmd BufWritePre Rakefile,Gemfile,Capfile,Makefile :call <SID>StripTrailingWhitespaces()

    autocmd BufEnter * if &filetype == "" | setlocal filetype=text | endif
    autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | quit | endif

    autocmd BufRead,BufNewFile *.txt set filetype=text
    autocmd BufRead,BufNewFile *.sls set filetype=yaml
    autocmd BufRead,BufNewFile *.hcl set filetype=terraform
    autocmd BufRead,BufNewFile *.gotmpl set filetype=gotexttmpl

    autocmd FileType text setlocal formatoptions-=t textwidth=0
    autocmd FileType mail DisableWhitespace
    autocmd FileType mail colorscheme slate
    autocmd FileType mail setlocal textwidth=78 noautoindent nolist nonumber digraph wrapmargin=0
    autocmd FileType git,gitcommit,gitsendemail DisableWhitespace
    autocmd FileType git,gitcommit,gitsendemail colorscheme slate
    autocmd FileType git,gitcommit,gitsendemail setlocal textwidth=72 foldmethod=syntax foldlevel=1
    autocmd FileType vim setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4
    autocmd FileType vim setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4
    autocmd FileType sh,bash setlocal formatoptions-=t expandtab shiftwidth=4 tabstop=8 softtabstop=4
    autocmd FileType rb,ruby setlocal formatoptions-=t expandtab textwidth=120 shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType py,python setlocal formatoptions-=t expandtab textwidth=80 shiftwidth=4 tabstop=8 softtabstop=4
    autocmd FileType php setlocal formatoptions-=t expandtab shiftwidth=4 tabstop=4 softtabstop=4
    autocmd FileType html,xhtml,xml,xslt setlocal formatoptions-=t expandtab shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType css setlocal formatoptions-=t expandtab shiftwidth=4 tabstop=4 softtabstop=4
    autocmd FileType js,javascript setlocal formatoptions-=t expandtab shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType c,cpp,cs,h,hpp,objc setlocal formatoptions-=t noexpandtab cindent textwidth=80 shiftwidth=8 tabstop=8 softtabstop=8
    autocmd FileType go setlocal formatoptions-=t noexpandtab textwidth=120 shiftwidth=8 tabstop=8 softtabstop=8
    autocmd FileType rs,rc setlocal formatoptions-=t expandtab textwidth=100 shiftwidth=4 tabstop=8 softtabstop=4
    autocmd FileType make setlocal formatoptions-=t noexpandtab shiftwidth=8 softtabstop=0
    autocmd FileType sql setlocal commentstring=--\ %s
    autocmd FileType yml,yaml setlocal formatoptions-=t expandtab shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType tf,hcl setlocal formatoptions-=t commentstring=#\ %s
augroup END
