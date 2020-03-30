set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add plugins here
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/syntastic'
Plugin 'fidian/hexmode'
Plugin 'scrooloose/nerdcommenter'
Plugin 'thinca/vim-quickrun'
Plugin 'morhetz/gruvbox'
Plugin 'davidhalter/jedi-vim'
Plugin 'eagletmt/neco-ghc'

call vundle#end()
filetype plugin indent on
silent! colorscheme gruvbox
set background=dark

syntax on
set nu rnu
set tabstop=4
set autoindent
inoremap jj <ESC>

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Files tree map
nmap <F6> :NERDTreeToggle<CR>

" Ctrl + / for toggling comments
nnoremap <C-_> :call NERDComment(0,"toggle")<CR>
vnoremap <C-_> :call NERDComment(0,"toggle")<CR>

" jedi-vim
set completeopt-=preview

