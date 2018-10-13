filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
call vundle#end()
filetype plugin indent on
set encoding=utf8
set number
syntax on
" autocmd vimenter * NERDTree
:map <C-n> :NERDTree
let g:airline_powerline_fonts = 1
