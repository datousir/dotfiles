#

# LC config
export LC_CTYPE=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8


# nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# ==== begin python ====

export WORKON_HOME=$HOME/.virtualenvs
# export PIPENV_VENV_IN_PROJECT=1

# for virtualenv 
# https://vi.stackexchange.com/questions/7644/use-vim-with-virtualenv/7654#7654 
if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  source "${VIRTUAL_ENV}/bin/activate"
fi

# pyenv init
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
export PYENV_ROOT="$HOME/.pyenv"
export PATH="/usr/local/sbin:$PATH"

# ==== end python ====


# export PATH=$HOME/Library/Haskell/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"

# ==== begin fzf ====

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='fd --type file --color=always --follow --exclude .git'
# export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --color=always  --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="-e --reverse --inline-info"
# export FZF_DEFAULT_OPTS="-e --reverse --inline-info --preview 'bat {}'"
# export FZF_DEFAULT_OPTS="-e --reverse --inline-info --preview 'pygmentize {}'"

# ==== end fzf ====

# macports
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
export MANPATH=/opt/local/share/man:$MANPATH

# for tmuxp
export DISABLE_AUTO_TITLE='true'

# for z
[ -f /usr/local/etc/profile.d/z.sh ] && . /usr/local/etc/profile.d/z.sh

# for iterm2_shell_integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Set Proxy
function setproxy() {
    # tencent internal
    # export HTTP_PROXY=http://web-proxy.tencent.com:8080
    # export http_proxy=http://web-proxy.tencent.com:8080
    # export HTTPS_PROXY=http://web-proxy.tencent.com:8080
    # export https_proxy=http://web-proxy.tencent.com:8080
    # export no_proxy="127.0.0.1,localhost,git.code.oa.com"
    export {http,https,ftp}_proxy="http://web-proxy.tencent.com:8080"
    export no_proxy="127.0.0.1,localhost,git.code.oa.com"
}

# Unset Proxy
function unsetproxy() {
    unset {http,https,ftp}_proxy
}

if [[ $OSTYPE =~ "darwin" ]]; then

    # for java
    export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
    alias j12="export JAVA_HOME=`/usr/libexec/java_home -v 12`; java -version"
    # alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"
    # alias j10="export JAVA_HOME=`/usr/libexec/java_home -v 10`; java -version"
    # alias j9="export JAVA_HOME=`/usr/libexec/java_home -v 9`; java -version"
    alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"
    export PATH=$PATH:$JAVA_HOME/bin
    
    # for golang 
    export GOROOT=/usr/local/opt/go/libexec

    # for android tools
    export ANDROID_HOME=$HOME/Library/Android/sdk
    export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

    # set default editor
    export EDITOR="/usr/local/bin/vim"

elif [[ $OSTYPE =~ "linux-gnueabihf" ]]; then
    # RPi 3B 
    # for golang
    export GOROOT=~/src/go
elif [[ $OSTYPE =~ "linux-gnu" ]]; then
    # for golang
    export GOROOT=~/src/go

    # set default editor
    export EDITOR="/usr/bin/vim"

    # add linuxbrew to path
    eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
    
fi

# set proxy for tencent
setproxy

export GOPATH=~/go
export GOBIN=~/go/bin
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

export PATH=~/bin:$PATH

export PATH="$HOME/src/clang+llvm-7.0.1-x86_64-linux-gnu-ubuntu-18.04/bin:$PATH"
export PATH="$HOME/bin:$PATH"

export PATH=$PATH:~/.roswell/bin
export PATH="/usr/local/opt/llvm/bin:$PATH"
