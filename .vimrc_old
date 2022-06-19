"                _                 _         _
"               | |               | |       (_)
" __      _____ | | __ _ _ __   __| | __   ___ _ __ ___  _ __ ___
" \ \ /\ / / _ \| |/ _` | '_ \ / _` | \ \ / / | '_ ` _ \| '__/ __|
"  \ V  V / (_) | | (_| | | | | (_| |  \ V /| | | | | | | | | (__
"   \_/\_/ \___/|_|\__,_|_| |_|\__,_|   \_/ |_|_| |_| |_|_|  \___|
"
""""""""""
"Encoding"
""""""""""
set encoding=utf-8
"""""""""
"Plugins"
"""""""""
" Run Below Curl command in a terminal to install vimplug. Works for vim on
" Unix Systems
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - e.g. `call plug#begin('~/.vim/plugged')`

"Completion plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"coc-tsserver coc-css coc-html coc-sh were installed with CocInstall coc-css
Plug 'maksimr/vim-jsbeautify'
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
Plug 'iamcco/markdown-preview.vim'
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
Plug 'christoomey/vim-system-copy'

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
" vnoremap <C-c> "*Y :let @+=@*<CR>
" map <C-o> "+P
set clipboard=unnamedplus
"Using the clipboard plugin c-p can be used to copy to system clipboard
"and c-v to paste from system clipboard- xsel is a dependency
"
" The default mapping is cp for copying and cv for pasting, and can be followed by any motion or text object. For instance:
"
" cpiw => copy word into system clipboard
" cpi' => copy inside single quotes to system clipboard
" cvi' => paste inside single quotes from system clipboard
" In addition, cP is mapped to copy the current line directly.
" The sequence cV is mapped to paste the content of system clipboard to the next line.

" set guicursor=i-ci:ver10-icursor-blinkwait300-blinkon200-blinkoff150
"type "+y to yank to + register and paste normally in a browser or whatever
"Ctrl C and p alone can be used to copy/paste normally inside of vim
"Above options work only for gvim

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
set cursorline
"set cursorcolumn
set hlsearch
set ic
set incsearch
"for persian RtL and arabic support within vim, must have compatible terminal 
"bicon and harfbuzz etc installed
set termbidi
set noswapfile

"""""""
"Theme "
""""""""
"set background=dark

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
"leader key is space
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

""""""""""""
"Comentator"
""""""""""""
"leader cc to comnment and leader cu to uncomment

"""""""""""
"NERDTree "
"""""""""""
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
"""""""""""""
" :EditVifm - select a file or files to open in the current buffer
" :Vifm - alias for :EditVifm to be used like :vert Vifm
" :SplitVifm - split buffer and select a file or files to open
" :VsplitVifm - vertically split buffer and select a file or files to open
" :DiffVifm - select a file or files to compare to the current file with :vert diffsplit
" :TabVifm - select a file or files to open in tabs
" :VifmCs - attempts to convert Vim's color scheme to Vifm's one
".vimrc

"""""""""""""""""""
"Beatify Web Files"
"""""""""""""""""""
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

""""""""""""""""""""""
"HTML CSS Live Server"
""""""""""""""""""""""
    let g:mkdp_path_to_chrome = ""
    " Path to the chrome or the command to open chrome (or other modern browsers).
    " If set, g:mkdp_browserfunc would be ignored.

    let g:mkdp_browserfunc = 'MKDP_browserfunc_default'
    " Callback Vim function to open browser, the only parameter is the url to open.

    let g:mkdp_auto_start = 0
    " Set to 1, Vim will open the preview window on entering the Markdown
    " buffer.

    let g:mkdp_auto_open = 0
    " Set to 1, Vim will automatically open the preview window when you edit a
    " Markdown file.

    let g:mkdp_auto_close = 1
    " Set to 1, Vim will automatically close the current preview window when
    " switching from one Markdown buffer to another.

    let g:mkdp_refresh_slow = 0
    " Set to 1, Vim will just refresh Markdown when saving the buffer or
    " leaving from insert mode. With default 0, it will automatically refresh
    " Markdown as you edit or move the cursor.

    let g:mkdp_command_for_global = 0
    " Set to 1, the MarkdownPreview command can be used for all files,
    " by default it can only be used in Markdown files.

    let g:mkdp_open_to_the_world = 0
    " Set to 1, the preview server will be available to others in your network.
    " By default, the server only listens on localhost (127.0.0.1).

""""""""""""""""""""""
"Markdown Live Server"
""""""""""""""""""""""
" for normal mode
nmap <silent> <F8> <Plug>MarkdownPreview
" for insert mode
imap <silent> <F8> <Plug>MarkdownPreview
" for normal mode
nmap <silent> <F9> <Plug>StopMarkdownPreview
" for insert mode
imap <silent> <F9> <Plug>StopMarkdownPreview
