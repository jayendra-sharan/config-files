set tabstop=2
set shiftwidth=2
set expandtab
set nu
set wrap!
set autochdir
set directory^=~/.vim/tmp//
set hlsearch

map <C-b> :NERDTreeToggle<CR>
nnoremap <C-q> :nohl<CR>
map <C-p> :Files<CR>
inoremap <C-s> :update<CR>gi
nnoremap zz :update<CR>

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
call plug#end()

" nerd tree config begin
let NERDTreeDirArrows=0
" nerd tree confing end

nnoremap <C-w>o :mksession! ~/.vim/session.vim<CR>:wincmd o<CR>
nnoremap <C-w>u :source ~/.vim/session.vim<CR>

set tags=tags;/
