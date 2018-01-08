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
colorscheme OceanicNext
