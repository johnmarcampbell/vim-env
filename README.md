# vim-env

A portable vim environment, complete with plug-ins as submodules.

## Installation

First backup and delete any existing vim environment files/directories.

    tar -cvf ~/vimEnvironmentBackup.tar ~/.vimrc ~/.vim && \
    rm -rf ~/.vimrc ~/.vim

Then create a a new `.vim` directory, pull the repo, and symlink to the `.vimrc` file

    mkdir ~/.vim && \
    git clone https://github.com/johnmarcampbell/vim-env.git ~/.vim && \
    ln -s ~/.vim/.vimrc ~/.vimrc

All the plug-ins are set up as [submodules](http://www.git-scm.com/book/en/v2/Git-Tools-Submodules). 
As a last step you'll have to pull them down separately.

    cd ~/.vim && \
    git submodule init && \
    git submodule update
