
if [[ $CPUTYPE =~ "arm64" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [[ $OSTYPE =~ "darwin" ]]; then

  eval "$(pyenv init --path)"

elif [[ $OSTYPE =~ "linux-gnu" ]]; then

  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init --path)"

fi

if which pyenv-virtualenv-init > /dev/null; then
  eval "$(pyenv virtualenv-init -)";
fi

# This loads nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

