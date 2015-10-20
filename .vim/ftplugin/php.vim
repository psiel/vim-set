colorscheme badwolf

set tabstop=4
set shiftwidth=4
set expandtab
set backspace=2

" folding
map <F2> <Esc>:EnableFastPHPFolds<Cr>
map <F3> <Esc>:DisablePHPFolds<Cr> 

" tag bar (list of functions, variables etc.)
map <F9> <Esc>:TagbarToggle<Cr>

source ~/.vim/ftplugin/php_tab_wrapper.vim
source ~/.vim/ftplugin/php_alignment.vim
source ~/.vim/ftplugin/php_uncomment.vim
source ~/.vim/ftplugin/php_getset.vim

map <c-f> :CtrlP<cr>

let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>
