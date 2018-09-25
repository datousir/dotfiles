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


# pyenv init
# if command -v pyenv 1>/dev/null 2>&1; then
#   eval "$(pyenv init -)"
# fi
# # pyenv-virtualenv init
# if which pyenv-virtualenv-init > /dev/null; then
#   eval "$(pyenv virtualenv-init -)";
# fi
export LC_CTYPE=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8


# ========================= cut from .zshrc =================

# nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



# pyenv & pyenv-virtualenv
# pyenv init
if command -v pyenv 1>/dev/null 2>&1; then
eval "$(pyenv init -)"
fi
# pyenv-virtualenv init
# if which pyenv-virtualenv-init > /dev/null; then
# eval "$(pyenv virtualenv-init -)";
# fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="/usr/local/sbin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"

# fzf
# export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --color=always  --exclude .git'
export FZF_DEFAULT_COMMAND='fd --type file --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# export FZF_DEFAULT_OPTS="-e --reverse --inline-info --preview 'bat {}'"
# export FZF_DEFAULT_OPTS="-e --reverse --inline-info --preview 'pygmentize {}'"
export FZF_DEFAULT_OPTS="-e --reverse --inline-info"

# macports
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
export MANPATH=/opt/local/share/man:$MANPATH

# for tmuxp
export DISABLE_AUTO_TITLE='true'

# for z
. /usr/local/etc/profile.d/z.sh

# for java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
alias j10="export JAVA_HOME=`/usr/libexec/java_home -v 10`; java -version"
alias j9="export JAVA_HOME=`/usr/libexec/java_home -v 9`; java -version"
alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"
export PATH=$PATH:$JAVA_HOME/bin

