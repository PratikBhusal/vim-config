set nocompatible
"auto update vimrc every time you modify it
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

"Vim Plugin Installation
call plug#begin('~/.vim/plugged')
"add vim sensible
Plug 'tpope/vim-sensible'
"add molokai colorscheme
Plug 'tomasr/molokai'
"add vim-airline & themes
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"add indent lines
Plug 'Yggdroot/indentLine'
"add utilisnips
"Plug 'SirVer/ultisnips'
"add the actual snippets
"Plug 'honza/vim-snippets'
"add BufExplorer
"Plug 'jlanzarotta/bufexplorer'
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

" on demand loading of NERD Tree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"on demand loading of ctrlp
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
call plug#end()

autocmd! FileType c,cpp,java,php call CSyntaxAfter() 

cd C:\Users\Pratik\Documents\Programming-Projects
autocmd BufEnter * silent! lcd %:p:h
"autocmd VimEnter * silent!cd C:\Users\Pratik\Documents\Programming-Projects

"make things look nice
set shortmess=a
syntax on
set hidden
set number

"set colorscheme, font, have no toolbar & set it to 256 colors
set guioptions-=T  " no toolbar
au GUIEnter * simalt ~x
set guifont=Consolas:h12
let g:indent_guides_guide_size= 1
colorscheme molokai
"let g:molokai_original = 1

map <C-L> 20zl " Scroll 20 characters to the right
map <C-H> 20zh " Scroll 20 characters to the left

"set tab indent to 4 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"move between tabs
map <C-Tab> gt
map <C-S-Tab> gT

"horizontal scrolling
map <C-L> 20zl " Scroll 20 characters to the right
map <C-H> 20zh " Scroll 20 characters to the left

"compile the program for c++
autocmd FileType cpp noremap <buffer> <silent> <F9> :w<cr>:!"C:\Binaries\compileRun\C++\compileRunC++.bat" "%:p:r"<cr><cr>
autocmd FileType cpp noremap <buffer> <silent> <F10> :!%:p:r.exe<cr>
"autocmd FileType cpp noremap <buffer> <silent> <F9> :w<cr>:!"C:\Binaries\compileRun\C++\compileRunC++.bat" %:p:r<cr><cr>

"compile the program for java
autocmd FileType java noremap <buffer> <F9> :w<cr>:exec '!javac' shellescape(expand('%'), 1) '&& java' shellescape(expand('%:r'), 1)<cr><cr>
autocmd FileType java noremap <buffer> <F10> :exec '!java' shellescape(expand('%:r'), 1)<cr><cr>

"Toggle NERD Tree
map <silent> <C-n> :NERDTreeToggle "C:\Users\Pratik\Documents\Programming-Projects"<CR>

"ctrlP support
map <silent> <C-p> :CtrlP C:\Users\Pratik\Documents\Programming-Projects<CR>
map <silent> <C-b> :CtrlPBuffer<CR>
