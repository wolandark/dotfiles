" _________________ " 
"|  _____________  |"
"| | woland vimrc| |"
"| |_____________| |"
"|_________________|"
"                   "
""""""""""
"Encoding"
""""""""""
set encoding=utf-8
"""""""""
"Plugins"
"""""""""
call plug#begin()

" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - e.g. `call plug#begin('~/.vim/plugged')`

"Completion plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"coc-tsserver coc-css coc-html coc-sh were installed with CocInstall coc-css
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'https://github.com/khaveesh/vim-fish-syntax.git'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
"Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/vifm/vifm.vim.git'
Plug 'https://github.com/ap/vim-css-color.git'
Plug 'preservim/nerdcommenter'

call plug#end()

""""""""""
" Cursor "
""""""""""
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set mouse=a

"""""""""""""
" Clipboard "
"""""""""""""
vnoremap <C-c> "*Y :let @+=@*<CR>
map <C-o> "+P
set clipboard=unnamedplus
"set guicursor=i-ci:ver10-icursor-blinkwait300-blinkon200-blinkoff150
"type "+y to yank to + register and paste normally in a browser or whatever
"Ctrl C and p alone can be used to copy/paste normally inside of vim
"
""""""""""""""
" Usual Things
""""""""""""""
" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

filetype plugin indent on
set autoindent
syntax on
set number
"set cursorline
"set cursorcolumn
set hlsearch
set ic
set incsearch
"for persian RtL and arabic support within vim, must have compatible terminal 
"bicon and harfbuzz etc installed
set termbidi

""""""""
"Theme "
""""""""
"set background=dark
"
"for lightline status bar
set laststatus=2 
set noshowmode
"set statusline+=%F

"Available colors are: one solarized wombat papercolor || Each has a dark and
"light version according to the set background option. || default is powerline
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype', '' ] ]
      \ },
      \ 'component': {
      \   'charvaluehex': '0x%B'
      \ },
      \ }

""""""""""""
" Mappings "
""""""""""""
"LEADER"
"leader key is space similar to spacevim I guess
let mapleader =" "
map <leader>f :Goyo <Cr>
map <leader>n :NERDTree <Cr>
map <leader>v :Vi <Cr>
map <leader>r :Ra <Cr>
"--------------------------------------
inoremap jj <esc>
nnoremap bs i#!/bin/bash<ESC>0
nnoremap cn iconsole.log<ESC>0
"nnoremap sh :!chmod +x % && source %

"""""""""""""
"Spell Check"
"""""""""""""
map <F6> :setlocal spell! spelllang=en_us<cr>
"---------------------------------------
set wildmode=longest,list,full
"---------------------------------------
"
""""""""""""""""""""""""""""""""""""""""
"Keybindings for sane buffer navigation"
""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
"""""""""""""""
"Vim-like file managers in vim"
"""""""""""""""
:command Ra !ranger
:command Vi !vifm
""""""""""""
"HTML Indent"
""""""""""""
:let g:html_indent_script1 = "inc"
:let g:html_indent_style1 = "inc"
:let g:html_indent_attribute = 1
:let g:html_indent_inctags = "html,body,head,tbody"

augroup Xml
    au BufNewFile *.html 0r ~/.vim/skeleton.xml
augroup end


"leader cc to comnment and leader cn to uncomment
"
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

"""""""""""""
"Vifm Plugin"
""""""""""""'

" :EditVifm - select a file or files to open in the current buffer
" :Vifm - alias for :EditVifm to be used like :vert Vifm
" :SplitVifm - split buffer and select a file or files to open
" :VsplitVifm - vertically split buffer and select a file or files to open
" :DiffVifm - select a file or files to compare to the current file with :vert diffsplit
" :TabVifm - select a file or files to open in tabs
" :VifmCs - attempts to convert Vim's color scheme to Vifm's one

