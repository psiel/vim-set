" use pathogen to manage plugins
execute pathogen#infect()

set encoding=utf-8

" 256 colors activate
set t_Co=256

" colorize syntax
syntax on
filetype plugin indent on

" show status line at the bottom
set laststatus=2

" default color theme
colorscheme jellybeans

" number of rows at the left
set number

" show cursorline && cursorbind
set cursorline
set cursorbind

" tabs navigation
nnoremap <F5> :tabprevious<CR>
nnoremap <F6> :tabnext<CR>
nnoremap <F7> :tabnew<CR>
nnoremap <F8> :tabclose<CR>


""" ext plugins settings

" NERDTRee switcher
map <C-n> :NERDTreeTabsToggle<CR>
