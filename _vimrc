set nocompatible
"auto update vimrc every time you modify it
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

"Platform Identification
let g:OSX = has('macunix')
let g:LINUX = has('unix') && !has('macunix') && !has('win32unix')
let g:WINDOWS = has('win32') || has('win64')

"Windows and heterogeneous OS compatibilty
if g:WINDOWS
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

"Vim Plugin Installation
call plug#begin('~/.vim/plugged')
"add molokai colorscheme
Plug 'tomasr/molokai'
"add colorscheme Solarized
"Plug 'altercation/vim-colors-solarized'
"add base16
Plug 'chriskempson/base16-vim'
"add vim sensible
Plug 'tpope/vim-sensible'
"add vim-airline & themes
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"add indent lines
Plug 'Yggdroot/indentLine'
"add utilisnips and snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"add EasyMotion
Plug 'easymotion/vim-easymotion' 
"add Fugitive
Plug 'tpope/vim-fugitive'
"add cSyntaxAfter
Plug 'PratikBhusal/cSyntaxAfter'
"add vim-taglist
"Plug 'emnh/taglist.vim'
"add vim-gitgutter
Plug 'airblade/vim-gitgutter'
"add vim-numbers
Plug 'myusuf3/numbers.vim'
"add YouCompleteMe
"Plug 'Valloric/YouCompleteMe'

" on demand loading of NERD Tree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"on demand loading of ctrlp
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
call plug#end()

autocmd! FileType c,cpp,java,php call CSyntaxAfter() 

autocmd BufEnter * silent!cd C:\Users\Pratik\Documents\Programming-Projects
autocmd BufEnter * silent! lcd %:p:h
"autocmd VimEnter * silent!cd C:\Users\Pratik\Documents\Programming-Projects

"make things look nice
set shortmess=at
syntax on
set hidden
set number

"set colorscheme, font, have no toolbar & set it to 256 colors
set guioptions-=T  " no toolbar
au GUIEnter * simalt ~x "Maximize Vim on Windows
set guifont=Consolas:h12
let g:indent_guides_guide_size= 1
"let g:molokai_original = 1
"Colorscheme Choice
if has("gui_running")
  colorscheme molokai
else
  "set t_Co=256
  set background=dark
  "let base16colorspace=256
  colorscheme base16-eighties
  
  "IDK what this does yet :/
  " The ctermbg option has been chosen using vim_bg_color_test.vim script
  "highlight Normal ctermfg=black ctermbg=222
endif

map <C-L> 20zl " Scroll 20 characters to the right
map <C-H> 20zh " Scroll 20 characters to the left

"set tab indent to 4 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"move between tabs
map <C-Tab> gt
map <C-S-Tab> gT

"horizontal scrolling
"map <C-L> 20zl " Scroll 20 characters to the right
"map <C-H> 20zh " Scroll 20 characters to the left

"Toggle NERD Tree
map <silent> <C-n> :NERDTreeToggle "C:\Users\Pratik\Documents\Programming-Projects"<CR>

"ctrlP
let g:ctrlp_root_markers = ['2016']
map <silent> <Leader>p :CtrlP C:\Users\Pratik\Documents\Programming-Projects<CR>
map <silent> <Leader>b :CtrlPBuffer<CR>

"UltiSnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<Leader>b"
"let g:UltiSnipsJumpBackwardTrigger="<Leader>z"

