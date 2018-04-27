source $HOME/.config/nvim/config/init.vimrc
source $HOME/.config/nvim/config/general.vimrc
source $HOME/.config/nvim/config/plugins.vimrc
source $HOME/.config/nvim/config/keys.vimrc
source $HOME/.config/nvim/config/line.vimrc

set encoding=utf8
let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

let g:slime_target = "tmux"
let g:slime_python_ipython = 1
let g:slime_paste_file = "$HOME/.slime_paste"
autocmd FileType python xmap <Space> <Plug>SlimrRegionSend
autocmd FileType python nmap <Space> <Plug>SlimeParagraphSend
nmap <c-c>v     <Plug>SlimeConfig
map <C-e> :NERDTreeToggle<CR>

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

let g:python_host_prog  = '/anaconda3/envs/airflow/bin/python'
let g:python3_host_prog = '/anaconda3/bin/python'
" let g:python3_host_prog = '/usr/local/bin/python3.6'

" Theme
syntax enable
"colorscheme monokai
colorscheme dracula
map <silent> <leader>c <Plug>(IPy-Run)

set autochdir
set tags=tags;
let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " Proper Ctags locations
let g:tagbar_width=26                          " Default is 40, seems too wide
nnoremap <silent> <Leader>b :TagbarToggle<CR>
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
let g:syntastic_python_pylint_args = '--disable=C0103'

