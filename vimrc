set nocompatible
filetype off

" Ajout de Vundle au runtime path et initialisation
set rtp+=~/.vim/bundle/Vundle.vim

filetype plugin indent on

set encoding=utf-8 fileencodings=
syntax on
set guifont=Monospace\ 30
set showmode
set smartindent
set number
set cc=80
let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk" || _curfile =~ "config" || _curfile =~ "picom.conf" || _curfile =~ ".bashrc"
set noexpandtab
else
set expandtab
set tabstop=4
set shiftwidth=4
endif
set shiftround
set list

nnoremap <Left> :echo "Use H"<CR>
vnoremap <Left> :<C-u>echo "Use H"<CR>
inoremap <Left> <C-o>:echo "Use H"<CR>


nnoremap <Right> :echo "Use L"<CR>
vnoremap <Right> :<C-u>echo "Use L"<CR>
inoremap <Right> <C-o>:echo "Use L"<CR>


nnoremap <Up> :echo "Use K"<CR>
vnoremap <Up> :<C-u>echo "Use K"<CR>
inoremap <Up> <C-o>:echo "Use K"<CR>

nnoremap <Down> :echo "Use J"<CR>
vnoremap <Down> :<C-u>echo "Use J"<CR>
inoremap <Down> <C-o>:echo "Use J"<CR>

inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha
