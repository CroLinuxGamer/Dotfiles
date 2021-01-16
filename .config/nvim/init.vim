" Config by
  " ____                            _    _         _             _    _
 " / ___|_ __ ___  _ __  _   _     / \  | | ____ _| |_ ___ _   _| | _(_)
" | |   | '__/ _ \| '_ \| | | |   / _ \ | |/ / _` | __/ __| | | | |/ / |
" | |___| | | (_) | | | | |_| |  / ___ \|   < (_| | |_\__ \ |_| |   <| |
 " \____|_|  \___/|_| |_|\__, | /_/   \_\_|\_\__,_|\__|___/\__,_|_|\_\_|
                       " |___/

" Plug settings
call plug#begin()
" inc search on steroids
Plug 'haya14busa/incsearch.vim'
" easy comment big chunks of code
Plug 'preservim/nerdcommenter'
" auto pairs
Plug 'jiangmiao/auto-pairs'
" edit and write system files
Plug 'lambdalisue/suda.vim'
" advanced syntax for multiple languages
Plug 'sheerun/vim-polyglot'
" advanced c++ syntax
Plug 'octol/vim-cpp-enhanced-highlight'
" async tack runner with a lot of functionality
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
" highlight duplicate words
Plug 'dbmrq/vim-ditto'
" pandoc markdown syntax
Plug 'vim-pandoc/vim-pandoc-syntax'
" coloring in vim
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
" completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" file explorer
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
" syntax checker
Plug 'dense-analysis/ale'
" dracula theme
Plug 'chuling/equinusocio-material.vim'
" airline
Plug 'vim-airline/vim-airline'
" git status
Plug 'tpope/vim-fugitive'
" nice startup screen
Plug 'mhinz/vim-startify'
" pulse after search
Plug 'inside/vim-search-pulse'
call plug#end()

" Center when entering insert mode
autocmd InsertEnter * norm zz

" Turn off auto commenting
autocmd FileType * setlocal formatoptions-=cro

" Disable auto intend
set noautoindent

" Open file at the place where you left
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Plugin settings
filetype plugin indent on

" Encoding settings
scriptencoding utf-8
set encoding=utf-8

" set python directories
let g:python_host_prog = '/usr/bin/python2.7'
let g:python3_host_prog = '/usr/bin/python3'

" search settings
set hlsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map *  <Plug>(incsearch-nohl-*)
let g:incsearch#auto_nohlsearch = 1

" misc
set nostartofline
set signcolumn=yes
set number
set showcmd
set nocompatible
set modelines=0
set novisualbell
set noerrorbells
set scrolloff=5
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0
set whichwrap+=<,>,h,l
set smartcase
set mouse=a
set updatetime=300
set cursorline
set cursorcolumn
set noshowmode
set hidden

" No tmp or swp files
set nobackup
set nowritebackup
set noswapfile

" System clipboard
set clipboard+=unnamedplus

" Split bindings
map <silent> <C-down> <C-W>j
map <silent> <C-up> <C-W>k
map <silent> <C-left> <C-W>h
map <silent> <C-right> <C-W>l

" Buffer bindings
map <silent> <S-left> :bp<CR>
map <silent> <S-right> :bn<CR>

" Sensible window sizes
set winheight=10
set winwidth=80
set winminheight=1
set winminwidth=5

" Some settings
set lazyredraw
set ttyfast
set backspace=indent,eol,start
set matchpairs+=<:>
set re=1

" tab settings
set tabstop=4 expandtab shiftwidth=4

" leader mapping
let g:mapleader = ","
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

au FocusGained,BufEnter * checktime

" Windows settings
set splitright
set splitbelow

" color scheme
syntax on
set background=dark
set t_Co=256
set termguicolors
let g:equinusocio_material_style = 'default'
set fillchars+=vert:│
colorscheme equinusocio_material

" nerdcommenter settings
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCompactSexyComs = 1
let g:NERDToggleCheckAllLines = 1

" rainbow settings
let g:rainbow_active = 1

" enable opening and saving sudo files with suda
let g:suda_smart_edit = 1
let g:suda#prefix = ['suda://', 'sudo://', '_://']
let g:suda#prompt = 'Pass: '

" c++ syntax settings
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

" async run and task settings
let g:asyncrun_open = 6
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg']
let g:asynctasks_term_pos = 'bottom'
let g:asynctasks_term_reuse = 1
let g:asynctasks_system = 'linux'
map <F10> :CocList tasks<CR>
map <F11> :AsyncTask build<CR>
map <F12> :AsyncTask run<CR>

" ditto settings
au FileType markdown,text,tex DittoOn

" markdown
augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END

let g:pandoc#syntax#conceal#urls = 1
let g:pandoc#syntax#style#use_definition_lists = 0

" Vim hexokinase settings
let g:Hexokinase_refreshEvents = ['TextChanged','InsertLeave']
let g:Hexokinase_optInPatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\     'colour_names'
\ ]
let g:Hexokinase_highlighters = ['backgroundfull']
autocmd VimEnter * HexokinaseTurnOn

" spell and completion settings
nmap <silent> <F4> :call Spell_check() <CR>

function! Spell_check()
    set spell spelllang=en_us
    set complete+=kspell
    set completeopt=menuone,longest
    set shortmess+=c
    nnoremap <leader>s ea<C-X><C-S>
    nnoremap <leader>p [s
    nnoremap <leader>n ]s
    nnoremap <leader>a zg
    nnoremap <leader>r zug
    inoremap <buffer> <expr> <CR> pumvisible() ? "\<C-y><Esc>" : "\<CR>"
endfunction

" nerd tree settings
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <silent> <F2> :NERDTreeToggle<CR>

" coc settings
let g:coc_global_extensions=[ 'coc-word', 'coc-tasks', 'coc-tabnine', 'coc-marketplace', 'coc-json', 'coc-clangd', 'coc-git', 'coc-html', 'coc-omnisharp', 'coc-sh' ]

" airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'equinusocio_material'

" incsearch and vim search pulse
let g:vim_search_pulse_disable_auto_mappings = 1
let g:incsearch#auto_nohlsearch = 1
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" Next or previous match is followed by a Pulse
map n <Plug>(incsearch-nohl-n)<Plug>Pulse
map N <Plug>(incsearch-nohl-N)<Plug>Pulse
map * <Plug>(incsearch-nohl-*)<Plug>Pulse
map # <Plug>(incsearch-nohl-#)<Plug>Pulse
map g* <Plug>(incsearch-nohl-g*)<Plug>Pulse
map g# <Plug>(incsearch-nohl-g#)<Plug>Pulse

" Pulses the first match after hitting the enter keyan
autocmd! User IncSearchExecute
autocmd User IncSearchExecute :call search_pulse#Pulse()

