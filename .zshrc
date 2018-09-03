# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="lambda"
#ZSH_THEME="agnoster"
ZSH_THEME="cobalt2"
# ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="random"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias e='emacsclient -t'
alias ec='emacsclient -c'

alias stree='/Applications/SourceTree.app/Contents/Resources/stree'

# force tmux to assume the terminal supports 256 colors
alias tmux='tmux -2'

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
plugins=(git brew osx python screen ssh-agent sublime svn tmux yum )

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
fpath=(/usr/local/share/zsh-completions $fpath)

ssh-add -K ~/.ssh/websocketserver.pem
 
# ======== In addition to nvm and fzf, other PATH settings should be in the .zshenv file. ========

# nvm 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
