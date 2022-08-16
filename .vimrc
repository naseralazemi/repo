"vimwiki
"execute pathogen#infect()
syntax on
filetype plugin indent on
"this is test for git 
"


set nocompatible
"filetype plugin on
"syntax on

set nu
set delcombine termbidi arabicshape encoding=utf-8
inoremap jk <ESC>
let mapleader=" "   

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" vimtex ======
Plug 'lervag/vimtex'

" Make sure you use single quotes
"  "vimwiki 
Plug 'vimwiki/vimwiki'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
"
Plug 'scrooloose/nerdtree'						" added nerdtree
Plug 'itchyny/lightline.vim'                      " Lightline statusbar

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }


" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
"UltiSnips is the ultimate solution for snippets in Vim. 
Plug 'sirver/ultisnips'
"tex for flavor 
Plug 'KeitaNakamura/tex-conceal.vim'

" calender vimwiki
Plug 'mattn/calendar-vim'
" Initialize plugin system
" Automatically show Vim's complete menu while typing.
Plug 'vim-scripts/AutoComplPop'

call plug#end()

inoremap <F3> <c-o>:w<cr><ESC>
set spell!

"let g:vimtex_complete_enabled

 " let g:tex_flavor='latex'
 "   let g:vimtex_view_method='zathura'
 "  " let g:vimtex_quickfix_mode=0
let g:tex_flavor='latex' " Default tex file format
let g:vimtex_view_method = 'skim' " Choose which program to use to view PDF file 
let g:vimtex_view_skim_sync = 1 " Value 1 allows forward search after every successful compilation
let g:vimtex_view_skim_activate = 1 " Value 1 allows change focus to skim after command `:VimtexView` is given
     let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

    set conceallevel=1
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none

"
"set autoindent
"set autoread
"set backspace=indent,eol,start
"set backupdir=/tmp//,.
"set clipboard=unnamedplus
"set colorcolumn=80
"set complete+=kspell
"set completeopt=menuone,longest
"set cursorline
"set directory=/tmp//,.
"set encoding=utf-8
"set expandtab smarttab
"set formatoptions=tcqrn1
"set hidden
"set hlsearch
"set ignorecase
"set incsearch
"set laststatus=2
"set matchpairs+=<:> " Use % to jump between pairs
"set mmp=5000
"set modelines=2
"set mouse=a
"set nocompatible
"set noerrorbells visualbell t_vb=
"set noshiftround
"set nospell
"set nostartofline
"set number relativenumber
"set regexpengine=1
"set ruler
"set scrolloff=3
"set shiftwidth=2
"set showcmd
"set showmatch
"set shortmess+=c
"set showmode
"set smartcase
"set softtabstop=2
"set spelllang=en_us
"set splitbelow
"set splitright
"set tabstop=2
"set textwidth=0
"set ttimeout
"set timeoutlen=1000
"set ttimeoutlen=0
"set ttyfast
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Powerline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ }

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

syntax enable   
set number relativenumber
let g:rehash256 = 1

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode


" test
