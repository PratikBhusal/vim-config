" Vim-Plug {{{ -----------------------------------------------------------------
function! plugin_manager#vim_plug()

" Vim-Plug automatic download {{{
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" }}}

call plug#begin('~/.vim/bundle')
" Add my own plugins :D
if isdirectory(expand('$HOME/.vim/src/vim-osplugin'))
    Plug '~/.vim/src/vim-osplugin'
    execute 'helptags ' . expand('$HOME/.vim/src/vim-osplugin/doc')
else
    Plug 'PratikBhusal/vim-osplugin'
endif
if isdirectory(expand('$HOME/.vim/src/vim-SnippetsCompleteMe'))
    Plug '~/.vim/src/vim-SnippetsCompleteMe'
    execute 'helptags ' . expand('$HOME/.vim/src/vim-SnippetsCompleteMe/doc')
else
    Plug 'PratikBhusal/vim-SnippetsCompleteMe'
endif
if isdirectory(expand('$HOME/.vim/src/vim-grip'))
    Plug '~/.vim/src/vim-grip'
    execute 'helptags ' . expand('$HOME/.vim/src/vim-grip/doc')
else
    Plug 'PratikBhusal/vim-grip'
endif

if !has('nvim')
    "add vim sensible
    Plug 'tpope/vim-sensible'
endif
"add molokai colorscheme
Plug 'tomasr/molokai'
" add vim-airline & themes
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
"add vim-hardtime to force learn vim movements
Plug 'takac/vim-hardtime'
"CtrlP- Fuzzy Finding PLugin
Plug 'ctrlpvim/ctrlp.vim'
"automatically add closed bracekets and braces
Plug 'jiangmiao/auto-pairs'
"Add a commenting plugin
Plug 'tpope/vim-commentary'
" Add async compiling
Plug 'tpope/vim-dispatch'
" Auto Generate Tags File
Plug 'ludovicchabant/vim-gutentags'
" C++ Autocompletion
if executable('clang')
Plug 'Rip-Rip/clang_complete'
endif
" Language Support
" Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'hdima/python-syntax'
Plug 'sheerun/vim-polyglot'
" Automatic Completion Menu popup
if has('lua')
    Plug 'Shougo/neocomplete.vim'
    Plug 'Shougo/neco-vim'
endif
" Plug 'lifepillar/vim-mucomplete'


" Plugins for consideration {{{
" Async Autocompletion
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Plug 'prabirshrestha/asyncomplete-buffer.vim'
" Plug 'prabirshrestha/asyncomplete-ultisnips.vim'

" Add vim-clang-format to format my c-family code
Plug 'rhysd/vim-clang-format'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" Add vim-easy-align to quickly align code.
Plug 'junegunn/vim-easy-align'

" Add Latex support
Plug 'lervag/vimtex'

" Rainbow parenthesis
Plug 'luochen1990/rainbow'

" Python Autocompletion
Plug 'vim-scripts/pythoncomplete'

" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'

" add vim-lightline. May eventually replace vim-airline
" Plug 'itchyny/lightline.vim'

" Add a vim wiki for notetaking and other needs
" Plug 'vimwiki/vimwiki'

" Add a syntax checking plugin
if v:version >= 800
    Plug 'w0rp/ale'
endif

" Add Verilog Support
Plug 'vhda/verilog_systemverilog.vim'

" Autocompletion Options
" Plug 'ajh17/VimCompletesMe'
" Plug 'lifepillar/vim-mucomplete'
" Plug 'ervandew/supertab'

" markdown preview
" Plug 'MikeCoder/markdown-preview.vim'

" Visual whitespace detection
Plug 'ntpeters/vim-better-whitespace'

" Have statusline show buffers
" Plug 'bling/vim-bufferline'


" CLISP Support
Plug 'l04m33/vlime', {'rtp': 'vim/'}

" Add better cwindow support
" Plug 'romainl/vim-qf'
" }}}

" on demand loading of NERD Tree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

endfunction
" Vim-Plug }}} -----------------------------------------------------------------
