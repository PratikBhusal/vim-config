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

if g:windows
    Plug '~/.vim/pack/osplugin/opt/osplugin-windows'
elseif g:linux
    Plug '~/.vim/pack/osplugin/opt/osplugin-linux'
endif

" if has('win32unix') || !has('gui_running')
"     if isdirectory(expand('$HOME/.vim/src/vim-SnippetsCompleteMe'))
"         Plug '~/.vim/src/vim-SnippetsCompleteMe'
"         execute 'helptags ' .
"             \ expand('$HOME/.vim/src/vim-SnippetsCompleteMe/doc')
"     else
"         Plug 'PratikBhusal/vim-SnippetsCompleteMe'
"     endif
" endif
if isdirectory(expand('$HOME/.vim/src/vim-grip'))
    Plug '~/.vim/src/vim-grip'
    execute 'helptags ' . expand('$HOME/.vim/src/vim-grip/doc')
else
    Plug 'PratikBhusal/vim-grip'
endif

" Visual Plugins {{{
Plug 'tomasr/molokai'
Plug 'bling/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'luochen1990/rainbow'
" Visual Plugins }}}

" Navigation Plugins {{{
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'easymotion/vim-easymotion'
Plug 'aykamko/vim-easymotion-segments'
Plug 'chaoren/vim-wordmotion'
Plug 'ctrlpvim/ctrlp.vim'
" Navigation Plugins }}}

" Filetype plugins {{{
if has('python3') || has('python')
    Plug 'python-mode/python-mode', { 'branch': 'develop' }
endif
if executable('clang')
    Plug 'Rip-Rip/clang_complete'
    Plug 'rhysd/vim-clang-format'
endif
if executable('cmake')
    Plug 'pboettch/vim-cmake-syntax'
    Plug 'vhdirk/vim-cmake'
endif
if executable('latexmk')
    Plug 'lervag/vimtex'
endif
" Filetype plugins }}}

" Syntax Plugins {{{
Plug 'sheerun/vim-polyglot'
Plug 'PratikBhusal/cSyntaxAfter'
" Syntax Plugins }}}

" Quality of life plugins {{{
" Plug 'jiangmiao/auto-pairs'
Plug 'rstacruz/vim-closer'
Plug 'tpope/vim-commentary'
Plug 'markonm/traces.vim'
Plug 'andymass/vim-matchup'
Plug 'jbgutierrez/vim-better-comments'
Plug 'ntpeters/vim-better-whitespace'
Plug 'junegunn/vim-easy-align'
Plug 'Konfekt/FastFold'
Plug 'tmhedberg/SimpylFold'
" Quality of life plugins }}}


Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-dispatch'

if !has('nvim')
    Plug 'tpope/vim-sensible'
endif

Plug 'takac/vim-hardtime'

Plug 'tpope/vim-fugitive' | Plug 'airblade/vim-gitgutter'

if v:version >= 800
    Plug 'w0rp/ale'
endif

" Autocompletion Plugins {{{
" if has('python3') && v:version >= 800
"     Plug 'Shougo/deoplete.nvim'
"     Plug 'roxma/nvim-yarp'
"     Plug 'roxma/vim-hug-neovim-rpc'
"     Plug 'Shougo/neco-vim'
"     Plug 'zchee/deoplete-jedi'
" elseif has('lua')
"     Plug 'Shougo/neocomplete.vim'
"     Plug 'Shougo/neco-vim'
" else
"     Plug 'lifepillar/vim-mucomplete'
" endif
Plug 'lifepillar/vim-mucomplete'
" Autocompletion Plugins }}}

" Plugins for consideration {{{
" Async Autocompletion
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Plug 'prabirshrestha/asyncomplete-buffer.vim'
" Plug 'prabirshrestha/asyncomplete-ultisnips.vim'

" Better comments

Plug 'vimwiki/vimwiki'

" Plug 'jbgutierrez/vim-better-comments'

" Add vim-clang-format to format my c-family code
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" " Python Autocompletion
" Plug 'vim-scripts/pythoncomplete'

" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'

" add vim-lightline. May eventually replace vim-airline
" Plug 'itchyny/lightline.vim'

" Add a vim wiki for notetaking and other needs
" Plug 'vimwiki/vimwiki'

Plug 'tweekmonster/startuptime.vim'


" if executable('tmux')
"     Plug 'christoomey/vim-tmux-navigator'
" endif

" Add Verilog Support
Plug 'vhda/verilog_systemverilog.vim'


" Autocompletion Options
" Plug 'ajh17/VimCompletesMe'
" Plug 'lifepillar/vim-mucomplete'
" Plug 'ervandew/supertab'

" Have statusline show buffers
" Plug 'bling/vim-bufferline'


" CLISP Support
Plug 'l04m33/vlime', {'rtp': 'vim/'}

" Add better cwindow support
" Plug 'romainl/vim-qf'

"Add todo.txt support
Plug 'freitass/todo.txt-vim'

" Add camel/snake case motions

" }}}

" on demand loading of NERD Tree
call plug#end()

endfunction
" Vim-Plug }}} -----------------------------------------------------------------
