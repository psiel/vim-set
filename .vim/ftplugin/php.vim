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
" let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates"
" nnoremap <buffer> <C-p> :call pdv#DocumentCurrentLine()<CR>
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>

let g:pdv_cfg_Author = "Stephane PY <py.stephane1@gmail.com>"

" PHP CS FIXER
let g:php_cs_fixer_path = $HOME . "/bin/php-cs-fixer.phar"

" PHP UNIT
let g:phpunit_cmd = "/srv/users/psielicki/trans/current/nettwww/vendor/bin/phpunit"


" If php-cs-fixer is in $PATH, you don't need to define line below
" php-cs-fixer.phar
let g:php_cs_fixer_level = "symfony"              " which level ?
let g:php_cs_fixer_config = "default"             " configuration
let g:php_cs_fixer_php_path = "php"               " Path to PHP
" " If you want to define specific fixers:
" "let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
 let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
 let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
 let g:php_cs_fixer_verbose = 0
