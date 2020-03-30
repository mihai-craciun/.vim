set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add plugins here
" Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/syntastic'
Plugin 'fidian/hexmode'
Plugin 'scrooloose/nerdcommenter'
Plugin 'morhetz/gruvbox'
Plugin 'davidhalter/jedi-vim'

call vundle#end()
filetype plugin indent on

syntax on
colorscheme gruvbox
set background=dark

set nu rnu
set autoindent
inoremap jj <ESC> " jj instead of esc

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

" jedi-vim python autocomplete
set completeopt-=preview " for annoying split view hint
