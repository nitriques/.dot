syntax on
filetype indent plugin on

noremap :W :w
noremap :Q :q

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'dietsche/vim-lastplace'
call plug#end()

