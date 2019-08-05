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

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias en='emacs -nw'
alias ec='emacsclient -c'
alias et='emacsclient -t'

alias stree='/Applications/SourceTree.app/Contents/Resources/stree'

# force tmux to assume the terminal supports 256 colors
alias tmux='tmux -2'

alias e="exa -l"
alias lsd="lsd -l"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

#export C_INCLUDE_PATH=$C_INCLUDE_PATH:/usr/local/opt/zeromq/include/
#export CPLUS_INCLUDE_PATH=$C_INCLUDE_PATH:/usr/local/opt/zeromq/include/
#export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/zeromq/lib/

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
plugins=(git brew osx python screen ssh-agent sublime svn tmux vi-mode yum
         colorize cargo catimg command-not-found urltools history-substring-search
         zsh-autosuggestions zsh-syntax-highlighting zsh-completions)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
fpath=(/usr/local/share/zsh-completions $fpath)

[ -f ~/.ssh/websocketserver.pem ] && ssh-add -K ~/.ssh/websocketserver.pem

# ======== In addition to nvm and fzf, other PATH settings should be in the .zshenv file. ========

# nvm
export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
# This loads nvm bash_completion
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# 如果想让新加入的 PATH 在 系统 PATH 之前,比如放在 zshrc 里,而不能放在 zshenv 里
# https://unix.stackexchange.com/a/250456
# http://www.softec.lu/site/DevelopersCorner/MasteringThePathHelper

# ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"
