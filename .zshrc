# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"
# ZSH_THEME="agnoster"
# ZSH_THEME="cobalt2"
# ZSH_THEME="random"


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git brew osx python screen ssh-agent sublime svn textmate vi-mode yum )
plugins=(colorize docker git brew osx python screen ssh-agent sublime svn tmux vi-mode yum
         colorize cargo catimg command-not-found urltools history-substring-search
         ubuntu encode64 themes vscode
         z zsh-autosuggestions zsh-syntax-highlighting zsh-completions)

source $ZSH/oh-my-zsh.sh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ew='emacs'
alias en='emacs -nw'
alias ec='emacsclient -c'
alias et='emacsclient -t'

alias stree='/Applications/SourceTree.app/Contents/Resources/stree'

# force tmux to assume the terminal supports 256 colors
alias tmux='tmux -2'

alias e="exa -l"
alias l="lsd -l"

# Customize to your needs...
fpath=(/usr/local/share/zsh-completions $fpath)

# ======== In addition to nvm and fzf, other PATH settings should be in the .zshenv file. ========

# nvm
export NVM_DIR="$HOME/.nvm"
# This loads nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# This loads nvm bash_completion
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# 如果想让新加入的 PATH 在 系统 PATH 之前,比如放在 zshrc 里,而不能放在 zshenv 里
# https://unix.stackexchange.com/a/250456
# http://www.softec.lu/site/DevelopersCorner/MasteringThePathHelper

if [[ $OSTYPE =~ "darwin" ]]; then
  # ruby
  export PATH="/usr/local/opt/ruby/bin:$PATH"
  export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"

  source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

  if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

    autoload -Uz compinit
    compinit
  fi
elif [[ $OSTYPE =~ "linux-gnu" ]]; then
  export PATH="/home/datousir/.pyenv/bin:$PATH"
fi

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
