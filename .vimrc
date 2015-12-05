" don't try to be strictly vi-like
set nocompatible

"" Vundle plugin manager
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"
"" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'
"
"" restructured text highlighting
"Plugin 'Rykka/riv.vim'
"
"" is required for riv.vim
"Plugin 'Rykka/clickable.vim'
"
"call vundle#end()

" configure folding by pressing on space
nnoremap <Space> za

" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on

" Set status line
set laststatus=2

" To turn off eager execution vim-gitgutter(git diff execution)
let g:gitgutter_eager = 0

" enable/disable fugitive(git) integration
let g:airline#extensions#branch#enabled = 1

" enable tabline
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_powerline_fonts = 1
"let g:airline_theme='powerlineish'
"let g:airline_left_sep = '»'

"let g:airline_left_sep = '' "'▶'

"let g:airline_right_sep = '«'
"let g:airline_right_sep = '' "'◀'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'

"indent line symbol configuration
let g:indentLine_char = '┆'

"autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
"set title

" make background dark, i.e black
set background=dark

" show the current mode of the editor
set showmode

" set encoding
set encoding=utf-8

" set terminal colors
set t_Co=256

" set color theme
colorscheme default
"colorscheme desert
"colorscheme relaxedgreen

set guitablabel=%t

" show the current mode of the editor
set ts=4

" I like 4 spaces for indenting
set sw=4

" Spaces instead of tabs
set expandtab

" Always  set auto indenting on
set ai

" set the commandheight
set ch=2

" Disable swap files
set noswapfile

"do not highlight cursor line
set nocursorline

" Store a ton of history (default is 20)
set history=1000

"maximum number of changes that can be undone
set undolevels=1000

"maximum number lines to save for undo on a buffer reload
set undoreload=10000

"folding settings
set foldmethod=indent
" disabled by default
set nofoldenable

"filetype on
"python autocomplete
filetype plugin on

" show line numbers
set number

" show title of the file in vim title bar
"set title

" Set status line format
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" Set 5 lines to the cursor - when moving vertically using j/k
set so=5

" keep at least 5 lines left/right
set sidescrolloff=5

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Height of the command bar
set cmdheight=2

set linebreak
"Wrap lines
set wrap

" Highlight search results
set hlsearch

" case insensitive patterns,...
set ignorecase

" when only lowercase is used
set smartcase

" Turn on the WiLd menu
set wildmenu

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" WTF ?
let s:cpo_save = &cpo
set cpo&vim

"The default leader is '\', but many people prefer ',' as it's in a standard location
let mapleader = ','
let g:mapleader = ","

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Set to auto read when a file is changed from the outside
set autoread

" insert pdb breakpoint
abbr ipdb import pdb;pdb.set_trace()<CR>

" Tabs navigation settings
map <silent><C-n> :tabnext<CR>
map <silent><C-p> :tabprevious<CR>

"I want my current directory to track my browsing.
let g:netrw_keepdir=0

"let g:netrw_browse_split=3
syntax on
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+$/

" kill trailing spaces when exiting file
"autocmd BufWritePre * :%s/\s\+$//e
set splitright

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
"

"vimux bindings (!!! works with tmux >= 1.5)
" Prompt for a command to run
map <Leader>rp :PromptVimTmuxCommand<CR><CR>
" Run last command executed by RunVimTmuxCommand
map <Leader>rl :RunLastVimTmuxCommand<CR>
" Inspect runner pane
map <Leader>ri :InspectVimTmuxRunner<CR>
" Close all other tmux panes in current window
map <Leader>rx :CloseVimTmuxPanes<CR>
" Interrupt any command running in the runner pane
map <Leader>rs :InterruptVimTmuxRunner<CR>


"" Source the vimrc file after saving it
"if has("autocmd")
"  autocmd bufwritepost .vimrc source $MYVIMRC
"endif


" ===== python-mode settings =====
" Load pylint code plugin
let g:pymode_lint = 1

nnoremap <leader>p :PymodeLint<cr>

" Switch pylint, pyflakes, pep8, mccabe code-checkers
" Can have multiply values "pep8,pyflakes,mcccabe"
let g:pymode_lint_checker = "pyflakes,pep8,mccabe"

" Autoremove unused whitespaces
let g:pymode_utils_whitespaces = 0

" Enable python folding
let g:pymode_folding = 1

" Skip errors and warnings
" E.g. "E501,W002", "E2,W" (Skip all Warnings and Errors startswith E2) and
" etc
"let g:pymode_lint_ignore = "E501"

" Select errors and warnings
" E.g. "E4,W"
"let g:pymode_lint_select = ""

" Check code every save
let g:pymode_lint_write = 1

" Place error signs
let g:pymode_lint_signs = 1

" Auto open cwindow if errors be finded
let g:pymode_lint_cwindow = 0

" Run linter on the fly
let g:pymode_lint_onfly = 1

" Auto fix vim python paths if virtualenv enabled
let g:pymode_virtualenv = 1

" Minimal height of pylint error window
let g:pymode_lint_minheight = 3

" Maximal height of pylint error window
let g:pymode_lint_maxheight = 6

" Set default pymode python indent options
let g:pymode_options_indent = 1

" Disable pymode python other options. XXX for disabling 'nowrap' option
let g:pymode_options_other = 0

" Enable pymode's custom syntax highlighting
let g:pymode_syntax = 1

" Enable all python highlightings
let g:pymode_syntax_all = 1

" Highlight "print" as function
let g:pymode_syntax_print_as_function = 0

" Highlight indentation errors
let g:pymode_syntax_indent_errors = g:pymode_syntax_all

" Highlight trailing spaces
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Highlight string formatting
let g:pymode_syntax_string_formatting = g:pymode_syntax_all

" Highlight str.format syntax
let g:pymode_syntax_string_format = g:pymode_syntax_all

" Highlight string.Template syntax
let g:pymode_syntax_string_templates = g:pymode_syntax_all

" Highlight doc-tests
let g:pymode_syntax_doctests = g:pymode_syntax_all

" Highlight builtin objects (__doc__, self, etc)
let g:pymode_syntax_builtin_objs = g:pymode_syntax_all

" Highlight builtin functions
let g:pymode_syntax_builtin_funcs = g:pymode_syntax_all

" Highlight exceptions
let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all

" For fast machines
let g:pymode_syntax_slow_sync = 0

" DISABLE freezing
let g:pymode_rope_lookup_project = 0
let g:pymode_rope = 0

" Persistent undo
set undodir=~/.vim/undodir
set undofile
"maximum number of changes that can be undone
set undolevels=1000
"maximum number lines to save for undo on a buffer reload
set undoreload=10000
