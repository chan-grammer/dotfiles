" vundle settings{{{
set nocompatible " be iMproved
filetype off    " required!

" Set runtimepath for vundle in windows
if has('win32') || has('win64')
    set rtp+=~/vimfiles/bundle/vundle/
    call vundle#rc('$HOME/vimfiles/bundle/')
else
    " For *nix
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
endif

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"}}}
" vundle plugins{{{

"Vim Snipmate
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
"Emmet
Bundle 'mattn/emmet-vim'
"Surround
Bundle 'tpope/vim-surround'
"Vim Haml/SCSS/Sass syntax highlighter
Bundle 'tpope/vim-haml'
"Vim-obsession
Bundle 'tpope/vim-obsession'
"CsApprox
Bundle 'godlygeek/csapprox'
"EasyMotion
Bundle 'Lokaltog/vim-easymotion'
"T-Comment
Bundle 'jmartindf/vim-tcomment'
"NerdTree
Bundle 'scrooloose/nerdtree'
"Vim-Airline
Bundle 'bling/vim-airline'
"SuperTab
Bundle 'ervandew/supertab'
"Php_qa
Bundle 'joonty/vim-phpqa.git'
"Match_tag_always
Bundle 'Valloric/MatchTagAlways'
"Tabular
Bundle 'godlygeek/tabular'
"Gundo
Bundle 'sjl/gundo.vim'
"Vim-less
Bundle 'lunaru/vim-less'
"Vim-jsbeautify
Bundle 'maksimr/vim-jsbeautify'
Bundle 'einars/js-beautify'
"Vim EditorConfig
Bundle 'editorconfig/editorconfig-vim'
"Javascript-Libraries-Syntax
Bundle 'mklabs/vim-backbone'

"}}}
" color schemes{{{

"   Distinguised
Bundle 'Lokaltog/vim-distinguished'
"   Github
Bundle 'endel/vim-github-colorscheme'
"   Pyte
Bundle 'therubymug/vim-pyte'
"   Sahara
Bundle 'tejr/sahara'
"   Mustang
Bundle 'cschlueter/vim-mustang'
"   Bad Wolf
Bundle 'sjl/badwolf'

"}}}
" vim general settings{{{

filetype plugin indent on " required
syntax enable

let mapleader = ","
let html_no_rendering=1

set history=100
" encoding
set encoding=utf-8
" don't force writing buffer to file when
" moving between buffers
set hidden
" search relative to the directory of the current file
" and within the current directory
set path=.,,,
" No Backups
set nobackup
set noswapfile
set wb
" don't redraw while executing macros
set lazyredraw
" show line number
set nu
" show ruler
set ruler
" Configure backspace so it acts as it should
set backspace=eol,start,indent
set listchars=tab:>-,eol:$
" No modelines for security reasons
set modelines=0
" Toggle paste
set pastetoggle=<F2>
" let vim choose the fileformat depending on EOL
set fileformats=unix,dos
" syntax coloring lines that are too long just slows down the world
set synmaxcol=128
" don't wrap
set nowrap
" used with %
set matchpairs+=<:>
" useful for buffer switching
" when there are so many files added to the buffer list
set nomore

"}}}
" ui settings{{{

if has('gui_running')
    if has("gui_gtk2")
        set guifont=Inconsolata\ 14

    elseif has("gui_win32")
        set guifont=Consolas:h11:cANSI
    endif
    set background=dark
    " set guioptions-=T
    " set guioptions-=e
    set guioptions=ac
    " let g:badwolf_darkgutter = 1
    colorscheme sahara
else
    set background=dark
    colorscheme distinguished
endif

"}}}
" cmdline settings{{{

" Lines above and below the current cursor while scrolling
" also modifies the behaviour of H, M, L
set scrolloff=5
" show what mode you're currently at
set showmode
" enable enhanced command line completion
set wildmenu
" Height of command bar
set cmdheight=2
" set statusline
set laststatus=2

"}}}
" indents and tabs setings{{{

" enable this to use spaces instead
set expandtab
set tabstop=4
" width when >> or << are pressed
set shiftwidth=4
" use spaces instead
set softtabstop=4
" tab on the same level as previous line
set smarttab
" auto indent same level as previous line
set smartindent
set autoindent

"}}}
" searching setting{{{

" hightlight as you type
set incsearch
" ignore case when searching
set ignorecase
" case sensitive once there is the search word
" starts with an uppercase letter
set smartcase
" for regex
set magic

"}}}
"  error indication settings{{{

" No annoying sound on errors
set noerrorbells
set novisualbell
" important : set this to empty so that there won't be bell or flash
set t_vb=

"}}}
" folding settings{{{

" Add a bit of extra margin to left
set foldcolumn=2

"}}}
" plugin settings {{{

" Note provide your own path for the respective phpqa_* plugins
" PHP_qa SETTNGS

" Set the codesniffer args
let g:phpqa_codesniffer_args = '--standard=PSR2'

" Paths
let g:phpqa_php_cmd='/opt/lampp/bin/php'
let g:phpqa_codesniffer_cmd='/home/chanhxc/pear/bin/phpcs'
let g:phpqa_messdetector_cmd='/home/chanhxc/pear/bin/phpmd'

" Dont run on save
let g:phpqa_messdetector_autorun = 0
let g:phpqa_codesniffer_autorun = 0

" Supertab
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

" NERDTree
let NERDTreeIgnore=['\.vim$', '\.git$', '\~$']


"}}}
" plugin mappings{{{

" NERDTree
map <leader>nt :NERDTreeToggle<cr>
map <leader>nf :NERDTreeFind<cr>

" Tabularize
if exists(":Tabularize")
    nnoremap <leader>a= :Tabularize /=<CR>
    vnoremap <leader>a= :Tabularize /=<CR>
    nnoremap <leader>a: :Tabularize /:<CR>
    vnoremap <leader>a: :Tabularize /:<CR>
    nnoremap <leader>a> :Tabularize /=><CR>
    vnoremap <leader>a> :Tabularize /=><CR>
endif

" Gundo
nnoremap <leader>gu :GundoToggle<CR>


"}}}
" general mappings {{{

" mapping in replacement of esc or CTRL-C in command mode

" applies nmap, smap, vmap
map <leader>; <esc>
smap <leader>; <esc>
" applies imap, cmap
imap <leader>; <esc>
cmap <leader>; <c-c>

" mapping for editing and sourcing .vimrc

"map for editing .vimrc
nnoremap <silent> <leader>ev :tabnew $MYVIMRC<cr>
"map for sourcing .vimrc
nnoremap <silent> <leader>sv :so $MYVIMRC<cr>

" mapping for moving around when wrap is on
nnoremap j gj
nnoremap k gk
" used for moving to the first non-blank char
nnoremap gj +
nnoremap gk -

" yank from cursor to end of line
nnoremap Y y$

" for jumping around code blocks
nmap <leader>j ]m
nmap <leader>J ]M
nmap <leader>k [m
nmap <leader>K [M

" toggles between relativenumber and number
" If nu is set toggle rnu and vice versa
nmap <silent>\ :exec &nu ? "set rnu!" : "set nu!"<cr>

" mapping for windows"

nnoremap <silent><c-h> :wincmd h<cr>
nnoremap <silent><c-j> :wincmd j<cr>
nnoremap <silent><c-k> :wincmd k<cr>
nnoremap <silent><c-l> :wincmd l<cr>

"moving windows
nnoremap <c-up> <c-w>K
nnoremap <c-right> <c-w>L
nnoremap <c-down> <c-w>J
nnoremap <c-left> <c-w>H

"resizing windows
nnoremap <Up> <c-w>+
nnoremap <Down> <c-w>-
nnoremap <Left> <c-w><
nnoremap <Right> <c-w>>

"_ in this keymap is to jump for a line with a nonblank char
"map for switching buffers
nnoremap <space> <c-w><c-w>_
" resizing for equal window sizes
nnoremap <s-space> <c-w>=

" Dealing with buffers

" selecting buffers
nnoremap <silent> <leader>sb :ls<cr>:b<space>

" toggle highlight from search pattern
nnoremap <silent> <leader>/ :set hlsearch!<cr>

" toggle paste
" Note it is the same with cmap <leader>p
" There's also a map for pastetoggle set to F2
nnoremap <silent> <leader>p :set paste!<cr>

" reselecting changed or pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" cd to the directory of the current file in buffer
nnoremap <leader>cd :lcd %:h<cr>

" mapping for opening the current file in browser
nnoremap <F12>g :exe 'silent !google-chrome %'<cr>
nnoremap <F12>f :exe 'silent !firefox %'<cr>

"display the current path
cnoremap <leader>p <c-r>=expand("%:p:h")<cr>
"display the current filename
cnoremap <leader>f <c-r>=expand("%:p")<cr>
" Open a newtab when doing a redirect of an :ex command output
command! -nargs=+ -complete=command TabMessage :call TabMessage(<q-args>)
"reselect indented block of text in vim
vmap <leader>< <gv
vmap <leader>> >gv

"}}}
" autocommands{{{

if has("autocmd")

    " Look for unnamed register "
    " Return to previous cursor position upon reading a file

    au BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \ exe "normal! g`\"" |
                \ endif

    " Removing trailing spaces before saving the file
    au BufWritePre * :%s/\v\s+$//e
    " Clear paste mode when going back to normal mode
    au InsertLeave * set nopaste

    au FileType css setlocal autoread
    au FileType css nnoremap <buffer> <c-f> :call CSSBeautify()<cr>

    au FileType javascript nnoremap <buffer> <c-f> :call JsBeautify()<cr>
    au FileType javascript set sts=2 sw=2 et

    au FileType html nnoremap <buffer> <c-f> :call HtmlBeautify()<cr>

    au FileType vim setlocal foldmethod=marker
    " note install first pman, and download php documentation
    au FileType php setlocal keywordprg=pman

    " if vim is compiled with omnifunc
    if exists("+omnifunc")
        autocmd Filetype *
        \if &omnifunc == "" |
        \setlocal omnifunc=syntaxcomplete#Complete |
        \endif
    endif


"}}}
" vim scripts {{{

" Path of custom Vim scripts
let scripts_pattern="~/vim_scripts/*.vim"

" source vim scripts in vim_script_path
for f in split(glob(scripts_pattern), "\n")
    if filereadable(f)
        exe 'so' f
    endif
endfor

endif

"}}}
