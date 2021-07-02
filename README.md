# nvim
A neovim configuration repo with many plugins that for more easily to install and configure your neovim!

## Requirements
* [neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
* [python3](https://www.python.org/)
* [nerd-fonts](https://github.com/ryanoasis/nerd-fonts#font-installation)

## Install & Configure
### 1. Install - Homebrew (macOS) / Linuxbrew (Linux)
```shell
brew install neovim/neovim/neovim
brew install python3
pip3 install neovim
```

### 2. Font
```shell
cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf
```
And set your terminal fonts to "Droid Sans Mono for Powerline Nerd Font Complete"

### 3. Configurations & Plugins
```shell
git clone https://github.com/hiyali/nvim.git ~/.config/nvim
nvim ~/.config/nvim/config/init.vimrc
:PlugInstall <CR>
```

## Initial

After installing,

1. Edit `$HOME/.config/nvim/init.local.vimrc`
2. Add the following line to `init.vim` `source $HOME/.config/nvim/init.local.vimrc`

### Contents of `init.local.vimrc`

These are instructions unique to the install eg. which python interpreter to use

```
let g:python_host_prog  = '/usr/bin/python'
let g:python3_host_prog = '/home/uesu/anaconda3/envs/tf18/bin/python'
" let g:python3_host_prog = '/home/uesu/anaconda3/envs/tensorflow14/bin/python'

nnoremap <silent> ,<space> :%d<CR>

let g:ghpr_github_auth_token = { 'github.com': '<token>'}
" let g:ghpr_show_pr_mapping


" auto highlight current word under cursor
" {{{
set updatetime=10 " Short updatetime so the CursorHold event fires fairly often

function! HighlightWordUnderCursor()
  if getline(".")[col(".")-1] !~# '[[:punct:][:blank:]]'
    exec 'match' 'Search' '/\V\<'.expand('<cword>').'\>/'
  else
    match none
  endif
endfunction

autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()
" }}}
```


Include coc

```
CocList extensions  
```

```
CocInstall coc-metals
CocInstall coc-python
CocInstall coc-jedi
```

use this to set the intepreter 

```
CocCommand python.setInterpreter
```


## Usage docs
[wiki](https://github.com/hiyali/nvim/wiki)

## Screenshot
![nvim](https://raw.githubusercontent.com/hiyali/nvim/master/assets/images/screenshot-8.png "nvim")
