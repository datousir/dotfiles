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
# if command -v pyenv 1>/dev/null 2>&1; then
#     eval "$(pyenv init -)"
#     fpath+=${ZDOTDIR:-~}/.zsh_functions
# fi
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="/usr/local/sbin:$PATH"

# ==== end python ====


# export PATH=$HOME/Library/Haskell/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"

# ==== begin fzf ====

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='fd --type file --follow --exclude .git'
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
function proxy_on {
    # tencent internal
    export {http,https,ftp,rsync}_proxy="http://web-proxy.tencent.com:8080"
    export no_proxy="127.0.0.1,localhost,git.code.oa.com,10.96.0.0/12,192.168.99.0/24,192.168.39.0/24"
    export {HTTP,HTTPS,FTP,RSYNC}_PROXY="http://web-proxy.tencent.com:8080"
    export NO_PROXY="127.0.0.1,localhost,git.code.oa.com,10.96.0.0/12,192.168.99.0/24,192.168.39.0/24"
    #if [ -f $HOME/.m2/settings.xml.orig ]; then
    #    mv $HOME/.m2/settings.xml.orig $HOME/.m2/settings.xml
    #fi
}

# Unset Proxy
function proxy_off {
    unset {http,https,ftp,rsync,no}_proxy
    unset {HTTP,HTTPS,FTP,RSYNC,NO}_PROXY
    #if [ -f $HOME/.m2/settings.xml ]; then
    #    mv $HOME/.m2/settings.xml $HOME/.m2/settings.xml.orig
    #fi
}

function maven_proxy_on {
    if [ -f $HOME/.m2/settings.xml.orig ]; then
        mv $HOME/.m2/settings.xml.orig $HOME/.m2/settings.xml
    fi
}
function maven_proxy_off {
    if [ -f $HOME/.m2/settings.xml ]; then
        mv $HOME/.m2/settings.xml $HOME/.m2/settings.xml.orig
    fi
}


if [[ $OSTYPE =~ "darwin" ]]; then

    # for java, only use LTS version
    export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
    alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"
    alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"
    export PATH=$PATH:$JAVA_HOME/bin

    # for golang
    export GOROOT=/usr/local/opt/go/libexec

    # for android tools
    export ANDROID_HOME=$HOME/Library/Android/sdk
    export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

    # llvm
    export PATH="/usr/local/opt/llvm/bin:$PATH"

    # set default editor
    export EDITOR="/usr/local/bin/vim"

    # set proxy for tencent
    proxy_off

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
    # eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

    # llvm
    # export PATH="$HOME/src/clang+llvm-7.0.1-x86_64-linux-gnu-ubuntu-18.04/bin:$PATH"
    export CC=gcc-7
    export CXX=g++-7

fi


export GOPATH=~/go
export GOBIN=~/go/bin
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# roswell
export PATH=$PATH:~/.roswell/bin

# ~/bin and ~/.local/bin
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"

# brew install coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
