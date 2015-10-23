set background=dark
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

" source ~/.vim/ftplugin/php_tab_wrapper.vim
source ~/.vim/ftplugin/php_alignment.vim
source ~/.vim/ftplugin/php_uncomment.vim
source ~/.vim/ftplugin/php_getset.vim
source ~/.vim/ftplugin/php_tags_navigation.vim
source ~/.vim/ftplugin/php_tags.vim

map <c-f> :CtrlP<cr>

" Taggatron conf
let g:tagcommands = {
\    "php" : {
\	"tagfile" : "/srv/users/psielicki/trans/current/nettwww/tags",
\	"cmd" : "ctags",
\       "args" : "-R",
\ 	"files" : "/srv/users/psielicki/trans/current/nettwww"
\    }
\}

" verbose while updating tags
" let g:taggatron_verbose = 1

" PDF PHP DOCS
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
nnoremap <buffer> <C-p> :call pdv#DocumentCurrentLine()<CR>

" PHP UNIT
let g:phpunit_cmd = "/srv/users/psielicki/trans/current/nettwww/vendor/bin/phpunit"
