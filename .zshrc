# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="cobalt2"
# ZSH_THEME="random"
ZSH_THEME="ys"


# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(docker git brew macos screen ssh-agent sublime svn tmux vi-mode yum
         colorize catimg command-not-found urltools history-substring-search
         ubuntu encode64 themes vscode z
         python rust
         )
         # z zsh-autosuggestions zsh-syntax-highlighting zsh-completions)

source $ZSH/oh-my-zsh.sh


# Example aliases
alias ew='emacs'
alias en='emacs -nw'
alias ec='emacsclient -c'
alias et='emacsclient -t'

# alias vim='nvim'

# force tmux to assume the terminal supports 256 colors
alias tmux='tmux -2'

alias e="exa -l"
alias l="lsd -l"

# Customize to your needs...
# fpath=(/usr/local/share/zsh-completions $fpath)

# ======== In addition to nvm and fzf, other PATH settings should be in the .zshenv file. ========

# ==== begin fzf ====

# export FZF_DEFAULT_COMMAND='rg --files'
export FZF_DEFAULT_COMMAND='fd --type file --follow --exclude .git'
# export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --color=always  --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="-e --reverse --inline-info"
# export FZF_DEFAULT_OPTS="-e --reverse --inline-info --preview 'pygmentize {}'"

# ==== end fzf ====

# 如果想让新加入的 PATH 在 系统 PATH 之前,需要放在 zshrc 里,而不能放在 zshenv 里
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
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi

  # for fzf
  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

elif [[ $OSTYPE =~ "linux-gnu" ]]; then

  # fzf for zsh
  source /usr/share/doc/fzf/examples/key-bindings.zsh
  source /usr/share/doc/fzf/examples/completion.zsh

fi

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

