# LC config
export LC_CTYPE=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8

export WORKON_HOME=$HOME/.virtualenvs
# export PIPENV_VENV_IN_PROJECT=1

# for virtualenv
# https://vi.stackexchange.com/questions/7644/use-vim-with-virtualenv/7654#7654
if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  source "${VIRTUAL_ENV}/bin/activate"
fi

# ==== begin fzf ====
# export FZF_DEFAULT_COMMAND='rg --files'
export FZF_DEFAULT_COMMAND='fd --type file --follow --exclude .git'
# export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --color=always  --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="-e --reverse --inline-info"
# export FZF_DEFAULT_OPTS="-e --reverse --inline-info --preview 'pygmentize {}'"

# ==== end fzf ====

# for tmuxp
export DISABLE_AUTO_TITLE='true'

function proxy_on {
  # tencent internal
  export {http,https,ftp,rsync}_proxy="127.0.0.1:12639"
  export no_proxy="127.0.0.1,localhost,10.96.0.0/12,192.168.99.0/24,192.168.39.0/24"
  export {HTTP,HTTPS,FTP,RSYNC}_PROXY="127.0.0.1:12639"
  export NO_PROXY="127.0.0.1,localhost,10.96.0.0/12,192.168.99.0/24,192.168.39.0/24"
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

# for china
export GOPROXY=https://goproxy.io


if [[ $OSTYPE =~ "darwin" ]]; then
  # set proxy for tencent
  proxy_on

  # macports
  export PATH=$PATH:/opt/local/bin:/opt/local/sbin
  export MANPATH=/opt/local/share/man:$MANPATH

  # for z
  [ -f /usr/local/etc/profile.d/z.sh ] && . /usr/local/etc/profile.d/z.sh

  # for iterm2_shell_integration
  test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

  # set default editor
  export EDITOR="/usr/local/bin/vim"

  # brew install coreutils
  export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

  # for android tools
  export ANDROID_HOME=$HOME/Library/Android/sdk
  export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

  # llvm
  export PATH="/usr/local/opt/llvm/bin:$PATH"

  # for java, only use LTS version
  export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
  alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"
  alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"
  alias j13="export JAVA_HOME=`/usr/libexec/java_home -v 13`; java -version"
  export PATH=$PATH:$JAVA_HOME/bin

  # for golang
  export GOROOT=/usr/local/opt/go/libexec

  # for fzf
  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

elif [[ $OSTYPE =~ "linux-gnueabihf" ]]; then
  # RPi 3B
  # for golang
  export GOROOT=~/src/go
elif [[ $OSTYPE =~ "linux-gnu" ]]; then
  # for golang
  export GOROOT=/usr/local/go


  # add linuxbrew to path
  # eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

  # c and c++ compiler config
  # export CC=gcc-7
  # export CXX=g++-7
  # export CC=gcc-9
  # export CXX=g++-9

  # java
  export JAVA_HOME=/usr/lib/jvm/default-java
  export PATH=$PATH:$JAVA_HOME/bin

  # snap
  export PATH=$PATH:/snap/bin/

fi

# ~/bin and ~/.local/bin
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"

# golang
export GOPATH=~/go
export GOBIN=~/go/bin
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# cargo for rust
export PATH="$HOME/.cargo/bin:$PATH"

