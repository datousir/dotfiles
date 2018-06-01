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

# # python virtualenv & virtualenvwrapper
# export WORKON_HOME=$HOME/.virtualenvs
# 
# export VIRTUALENVWRAPPER_PYTHON=/usr/local/opt/python2/bin/python
# source /usr/local/bin/virtualenvwrapper.sh 
# 
#

ssh-add -K ~/.ssh/websocketserver.pem
 
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


 
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
export FZF_DEFAULT_OPTS="-e --reverse --inline-info --preview 'pygmentize {}'"

# macports
export PATH=$PATH:/opt/local/bin:/opt/local/sbin
export MANPATH=/opt/local/share/man:$MANPATH

