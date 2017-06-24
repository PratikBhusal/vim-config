set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Plugin Installation {{{
call plug#begin('~/.vim/plugged')

"add Onedark colorscheme
Plug 'joshdick/onedark.vim'
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
"add better c++ syntax highlighting
Plug 'octol/vim-cpp-enhanced-highlight'
"add YouCompleteMe
"Plug 'Valloric/YouCompleteMe'
"add vim-taglist
"Plug 'emnh/taglist.vim'
"add enhanced python synthax
Plug 'hdima/python-syntax'
"add vim-hardtime to force learn vim movements
Plug 'takac/vim-hardtime'
"CtrlP- Fuzzy Finding PLugin
Plug 'ctrlpvim/ctrlp.vim'

" on demand loading of NERD Tree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

call plug#end()
" }}}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
