""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable Vi compatibility {{{
set nocompatible
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change location of temporary files {{{
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
" }}} 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Create temporary file folders if they currently do not exit  {{{
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Live the Vim life {{{
inoremap <up> <nop>
vnoremap <up> <nop>
inoremap <down> <nop>
vnoremap <down> <nop>
inoremap <left> <nop>
vnoremap <left> <nop>
inoremap <right> <nop>
vnoremap <right> <nop>
 "}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto Update at save {{{
augroup reload_vimrc " {
autocmd!
autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
"}}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Platform Identification & Compatibility {{{
let g:OSX = has('macunix')
let g:LINUX = has('unix') && !has('macunix') && !has('win32unix')
let g:WINDOWS = has('win32') || has('win64')
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Windows heterogeneous OS compatibilty {{{
if g:WINDOWS
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after
    set runtimepath+=$Home/.vim/after
endif
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Plugin Installation {{{
call plug#begin('~/.vim/bundle')

if !has('nvim')
    "add vim sensible
    Plug 'tpope/vim-sensible'
endif
if g:WINDOWS
    Plug 'xolox/vim-shell'
    Plug 'xolox/vim-misc'
endif
if g:LINUX
    Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
    "add YouCompleteMe
    Plug 'Valloric/YouCompleteMe'
endif
"add molokai colorscheme
Plug 'tomasr/molokai'
"add vim-airline & themes
Plug 'bling/vim-airline' | Plug 'vim-airline/vim-airline-themes'
"add indent lines
Plug 'Yggdroot/indentLine'
"add utilisnips and snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"add EasyMotion
Plug 'easymotion/vim-easymotion' 
"add Git Support
Plug 'tpope/vim-fugitive' | Plug 'airblade/vim-gitgutter'
"add cSyntaxAfter
Plug 'PratikBhusal/cSyntaxAfter'
"add better c++ syntax highlighting
Plug 'octol/vim-cpp-enhanced-highlight'
"add clang_complete plugin
Plug 'Rip-Rip/clang_complete'
"add enhanced python synthax
Plug 'hdima/python-syntax'
"add vim-hardtime to force learn vim movements
Plug 'takac/vim-hardtime'
"CtrlP- Fuzzy Finding PLugin
Plug 'ctrlpvim/ctrlp.vim'
"automatically add closed bracekets and braces
Plug 'jiangmiao/auto-pairs'
"Add Syntastic
"Plug 'vim-syntastic/syntastic'

" on demand loading of NERD Tree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lazy Kebindings {{{
let mapleader = ' '
nnoremap ; :
command! WQ wq
command! Wq wq
command! W w
command! Q q
imap <C-c> <Esc>
set autochdir
autocmd BufEnter * silent! lcd %:p:h
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Forced use of more efficient movement commands {{{
let g:hardtime_default_on = 1
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Wrapping & Border Config {{{
set tw=80
execute "set colorcolumn=" .join(range(81,&columns), ',')
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sorting {{{
nnoremap <leader>s vip:!sort<cr>
vnoremap <leader>s :!sort<cr>
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make things look nice{{{
set shortmess=at
syntax on
set hidden
set number
set relativenumber
set mousehide
"set guioptions-=m  "remove menubar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
let g:indent_guides_guide_size= 2
set background=dark
colorscheme molokai
"Colorscheme Choice
colorscheme molokai
if !has("gui_running")
    let g:rehash256 = 1
endif
set encoding=utf-8
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change how the cursor looks {{{
set guicursor=c-i-ci:ver15-Cursor/lCursor
set guicursor=v:hor15-Cursor/lCursor
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make searching less tedious (Without it put \c (insen) or \C (sen) at end) {{{
set ignorecase
set smartcase
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set tab intent to 4 spaces {{{
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding Practice {{{
set foldmethod=marker
set foldlevelstart=1
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax Highlight Settings {{{
let python_highlight_all = 1
"autocmd! FileType c,cpp,java,php call CSyntaxAfter()
autocmd! FileType c,java,php call CSyntaxAfter()
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Platform Dependent Configs {{{
if g:WINDOWS
    source $HOME/.vim/configs/Windows.vim
elseif g:LINUX
    source $HOME/.vim/configs/Linux.vim
else
    source $HOME/.vim/configs/OSX.vim
endif
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Configs {{{
source $HOME/.vim/configs/Plugins.vim
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
