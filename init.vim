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


" Theme
syntax enable
colorscheme monokai
" colorscheme dracula
map <silent> <leader>c <Plug>(IPy-Run)

set autochdir
set tags=tags;
let g:tagbar_ctags_bin='/usr/bin/ctags'  " Proper Ctags locations
let g:tagbar_width=26                          " Default is 40, seems too wide
nnoremap <silent> <Leader>b :TagbarToggle<CR>
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
let g:syntastic_python_pylint_args = '--disable=C0103'
nnoremap <leader>. :CtrlPTag<cr>


autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>
set timeoutlen=1000 ttimeoutlen=0

au BufRead,BufNewFile *.md set filetype=pandoc
let g:pandoc#syntax#codeblocks#embeds#langs = ["python", "bash=sh", "r"]
set colorcolumn=72

" In ~/.vim/ftplugin/python.vim

" Check Python files with flake8 and pylint.
let b:ale_linters = ['flake8', 'pylint']
" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['autopep8', 'yapf']
" Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0
