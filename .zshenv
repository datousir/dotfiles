export GOROOT=/usr/local/opt/go/libexec
export GOPATH=~/go
export GOBIN=~/go/bin
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

export PATH=~/bin:$PATH

# export PATH=$HOME/Library/Haskell/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
# export RUST_SRC_PATH=~/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src
# export RUST_SRC_PATH=~/.multirust/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src

export WORKON_HOME=$HOME/.virtualenvs
# source /usr/local/bin/virtualenvwrapper.sh 
# export VIRTUALENVWRAPPER_PYTHON=/usr/local/opt/python2/bin/python
# export PIPENV_VENV_IN_PROJECT=1

# ssh-add -K ~/.ssh/websocketserver.pem

# # nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# # pyenv & pyenv-virtualenv
# # pyenv init
# if command -v pyenv 1>/dev/null 2>&1; then
#   eval "$(pyenv init -)"
# fi
# # pyenv-virtualenv init
# if which pyenv-virtualenv-init > /dev/null; then
#   eval "$(pyenv virtualenv-init -)";
# fi
export LC_CTYPE=zh_CN.UTF-8
# export LC_ALL=zh_CN.UTF-8
