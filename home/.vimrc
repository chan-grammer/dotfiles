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

"}}}
" vundle plugins{{{

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
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
Bundle 'tomtom/tcomment_vim'
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
"Syntastic
Bundle 'scrooloose/syntastic'
"CtrlP
Bundle 'kien/ctrlp.vim'
"Vim-Markdown
Bundle 'plasticboy/vim-markdown'
"Tagbar
Bundle 'majutsushi/tagbar'
"Vim-Misc
Bundle 'xolox/vim-misc'
" Vim-EasyTags
Bundle 'xolox/vim-easytags'
"Vim-blade
Bundle 'xsbeats/vim-blade'
"Repeat
Bundle 'tpope/vim-repeat'
"Javascript-Libraries-Syntax
" Bundle 'mklabs/vim-backbone'
"Php_fixer
" Bundle 'stephpy/vim-php-cs-fixer'

"}}}
" color schemes{{{

"Github
Bundle 'endel/vim-github-colorscheme'
"Pyte
Bundle 'therubymug/vim-pyte'
"Bad Wolf
Bundle 'sjl/badwolf'

"}}}
" vim general settings{{{

filetype plugin indent on " required
syntax enable

let mapleader = ","
let html_no_rendering=1

" disable splash screen
set shortmess +=I

set history=200
set encoding=utf-8
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
set nu
set ruler
set backspace=eol,start,indent
set listchars=tab:>-,eol:$
" No modelines for security reasons
set modelines=0
" Toggle paste
set pastetoggle=<leader>p
" let vim choose the fileformat depending on EOL
set fileformats=unix,dos
" syntax coloring lines that are too long just slows down the world
set synmaxcol=128
set nowrap

" symbol to show if wrap is on
set showbreak=↪
" used with %
set matchpairs+=<:>
" useful for buffer switching
" when there are so many files added to the buffer list
set nomore
set scrolloff=5
set mouse=a
" go up to the directory hierarchy until a tag file is found
" ';' means to recursively search upward. :h file-searching
set tags=./tags;

"}}}
" ui settings{{{

if has('gui_running')
    if has("gui_gtk2")
        set guifont=Inconsolata\ 12

    elseif has("gui_win32")
        set guifont=Consolas:h11:cANSI
    endif
    set background=light
    " set guioptions-=T
    " set guioptions-=e
    set guioptions=ac
    colorscheme pyte
else
    set background=dark
    colorscheme badwolf
    let g:badwolf_darkgutter = 1
    let g:badwolf_html_link_underline = 0
endif

"}}}
" cmdline settings{{{

" show what mode you're currently at
set showmode
" enable enhanced command line completion
set wildmenu
" ignore files on command completion
set wildignore=*.o,*~,*.git
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
" Note: \c or \C inside your search pattern ignores
" ignorecase && smartcase settings
" \pattern\C
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

" PHP_qa and PHP_unit settings

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
let NERDTreeChDirMode=2
let NERDTreeWinSize=20

" Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=1
let g:syntastic_auto_jump=1
let g:syntastic_always_populate_loc_list=1

let g:syntastic_ignore_files=['^/usr/include/', '\c\.php$']

" Emmet

let g:user_emmet_expandabbr_key = '<c-e>'

" CtrlP
let g:ctrlp_map = '<leader>P'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0

silent! nnoremap <unique> <silent> <leader>P :CtrlP<CR>
" CtrlP for buffers
silent! nnoremap <unique> <silent> <leader>B :CtrlPBuffer<CR>
" CtrlP for tags
silent! nnoremap <unique> <silent> <leader>T :CtrlPTag<CR>
" CtrlP for filetype
silent! nnoremap <unique> <silent> <leader>F :CtrlPMRU<CR>

" Tagbar

let g:tagbar_compact=1
let g:tagbar_indent=1
let g:tagbar_width=20
let g:tagbar_show_visibility=1

silent! nnoremap <unique> <silent> <leader>t :TagbarToggle<CR>

" EasyTags

" update only tags per save
let g:easytags_events=['BufWritePost']

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

" TComment

noremap <leader>gb :TCommentBlock<CR>

"}}}
" general mappings {{{

" convert tabs to spaces
map <leader>zs :<c-u>set et <bar> retab!<cr>
" convert spaces to tabs
map <leader>zt :<c-u>set noet <bar> retab!<cr>

" remap ',' for last f/F operations in backward motion
nnoremap <; ,

" autoclose common symbols
inoremap <leader>{ {<cr>}<c-o>O
inoremap <leader>( ()<c-o>i
inoremap <leader>[ []<c-o>i

" quick edits and sourcing

nnoremap <leader>es :tabnew ~/.vim/bundle/vim-snipmate/snippets<cr>
nnoremap <leader>ev :tabnew $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>

" disable keys
nmap Q <nop>
nmap F1 <nop>

"paste from clipboard
"overrides ctrlP plugin
nnoremap <c-p>p "+p
nnoremap <c-p>P "+P
"copy to clipboard
vnoremap <c-c> "+ygv<esc>
"cut to clipboard
vnoremap <c-d> "+ygvd

" delete to blackhole register
nmap <leader>d "_d

" indent the whole file
nnoremap Q gg=G

" override goto first/last char
nnoremap H _
nnoremap L g_

" remap H, L
nnoremap <leader>H H
nnoremap <leader>L L

" remap <esc> key
nnoremap <leader>; <esc>
inoremap <leader>; <esc>
vnoremap <leader>; <esc>
snoremap <leader>; <esc>
cnoremap <leader>; <c-c>

" mapping for moving around when wrap is on
nnoremap j gj
nnoremap k gk

" mappings up to the end of the line
nnoremap Y y$

" Fix linewise visual selection of various text objects
" Note 'V' converts it to linewise
nnoremap Vit vitVkoj
nnoremap Vat vatV
nnoremap Vab vabV
nnoremap VaB vaBV
nnoremap Va} va}V

" deleting a code block wherein the opening
" curly brace is on its own line
nnoremap <leader>df va}okd
" vertical split
nnoremap <leader>v  <c-w>v

" for jumping around code blocks
nmap <leader>j ]m
nmap <leader>J ]M
nmap <leader>k [m
nmap <leader>K [M

" toggles between relativenumber and number
" If nu is set toggle rnu and vice versa
nmap <silent>\ :exec &nu ? "set rnu!" : "set nu!"<cr>
" toggle invisible characters
nmap  <leader>l :set list!<cr>

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
nnoremap <Right> <c-w><
nnoremap <Left> <c-w>>

"tab keymaps
"replace the tag map key
nmap  <c-t> :tabnew<cr>

"go to previous tag definition
nnoremap <leader>. <c-t>

"_ in this keymap is to jump for a line with a nonblank char
"map for switching buffers
nnoremap <space> <c-w><c-w>_

" selecting buffers
nnoremap <leader>b :ls<cr>:b<space>

" toggle highlight from search pattern
nnoremap <leader>/ :set hlsearch!<cr>

" reselecting changed or pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" cd to the directory of the current file in buffer
nnoremap <leader>cd :lcd %:h<cr>

" mapping for opening the current file in browser
nnoremap <F12>g :exe 'silent !google-chrome %'<cr>
nnoremap <F12>f :exe 'silent !firefox %'<cr>

"reselect indented block of text in vim
vmap <leader>< <gv
vmap <leader>> >gv

" display the current path
cnoremap <leader>p <c-r>=expand("%:p:h")<cr>
" display the current filename
cnoremap <leader>f <c-r>=expand("%:p")<cr>

" remap to bash-like keys
cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-h> <s-left>
cnoremap <c-l> <s-right>

" shortcut for setting filetype
cnoremap <leader>ft set ft=

" saving readonly files
cnoremap w!! w !sudo tee % > /dev/null

" Open a newtab when doing a redirect of an :ex command output
command! -nargs=+ -complete=command TabMessage :call TabMessage(<q-args>)

silent! call repeat#set("\<Plug>surround", v:count)
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

    " CSS {{{2
    augroup ft_css
        au!
        au FileType css setlocal autoread
        au FileType css nnoremap <buffer> <c-f> :call CSSBeautify()<cr>
    augroup END
    " }}}

    " JAVASCRIPT {{{2
    augroup ft_js
        au FileType javascript nnoremap <buffer> <c-f> :call JsBeautify()<cr>
        au FileType javascript set sts=2 sw=2 et
    augroup END
    " }}}

    " HTML  {{{2
    augroup ft_html
        au FileType html nnoremap <buffer> <c-f> :call HtmlBeautify()<cr>
    augroup END
    " }}}

    " VIM  {{{2
    augroup ft_vim
        au FileType vim setlocal foldmethod=marker
    augroup END
    " }}}

    " PHP {{{2
    augroup ft_php
        " note install first pman, and download php documentation
        au FileType php setlocal keywordprg=pman
    augroup END
    " }}}

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
