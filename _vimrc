"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"auto update vimrc every time you modify it
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Platform Identification & Compatibility
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:OSX = has('macunix')
let g:LINUX = has('unix') && !has('macunix') && !has('win32unix')
let g:WINDOWS = has('win32') || has('win64')

"Windows and heterogeneous OS compatibilty
if g:WINDOWS
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after
    set runtimepath+=$Home/.vim/after
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vim Plugin Installation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
"add molokai colorscheme
Plug 'tomasr/molokai'
"add base16 colorscheme
Plug 'chriskempson/base16-vim'
"add vim sensible
Plug 'tpope/vim-sensible'
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
"add vim-numbers
Plug 'myusuf3/numbers.vim'
"add better c++ syntax highlighting
Plug 'octol/vim-cpp-enhanced-highlight'
"add YouCompleteMe
"Plug 'Valloric/YouCompleteMe'
"add vim-taglist
"Plug 'emnh/taglist.vim'
"add vim-starify
Plug 'mhinz/vim-startify'

" on demand loading of NERD Tree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"on demand loading of ctrlp
Plug 'ctrlpvim/ctrlp.vim', { 'on': ['CtrlP', 'CtrlPBuffer'] }

call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Lazy Kebindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ' '
nnoremap ; :
command! WQ wq
command! Wq wq
command! W w
command! Q q
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Platform Dependent Configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if g:WINDOWS
	source $home\.vim\configs\Windows.vim
endif
if g:LINUX
	source $home\.vim\configs\Linux.vim
endif
if g:OSX
	source $home\.vim\configs\OSX.vim
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"autocmd! FileType c,cpp,java,php call CSyntaxAfter()
autocmd! FileType c,java,php call CSyntaxAfter()


"make things look nice
set shortmess=at
syntax on
set hidden
set number

"text Wrapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set tw=79
execute "set colorcolumn=" . join(range(80,166), ',')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set colorscheme, font, have no toolbar, etc
set guioptions-=T  " no toolbar
set guifont=Consolas:h12
let g:indent_guides_guide_size= 2
"let g:molokai_original = 1
set background=dark
"Colorscheme Choice
if has("gui_running")
  colorscheme molokai
else
  colorscheme base16-eighties
endif

"set tab indent to 4 spaces
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
"horizontal scrolling
"map <C-L> 20zl " Scroll 20 characters to the right
"map <C-H> 20zh " Scroll 20 characters to the lefts

"Folding Practice
set foldmethod=indent
set foldlevelstart=1

"Ultisnips Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
set runtimepath+=~\plugged\vim-snippets\UltiSnips
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "plugged/vim-snippets/UltiSnips"]
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<Leader>z"
let g:UltiSnipsEditSplit="vertical"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
