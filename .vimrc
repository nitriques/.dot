syntax on
filetype indent plugin on

noremap :W :w
noremap :Q :q

set t_Co=256

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'dietsche/vim-lastplace'
call plug#end()

