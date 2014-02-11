.vim
====
### Installation:

    git clone git@github.com:jkoenig311/.vim.git ~/.vim

## Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

## Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

## Build vimproc
    cd ~/.vim/bundle/vimproc.vim/
    make

### Install new plugins as submodules:

    cd ~/.vim
    git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
    git add .
    git commit -m "Install Fugitive.vim bundle as a submodule."

### Upgrade all bundled plugins:

    git submodule foreach git pull origin master
