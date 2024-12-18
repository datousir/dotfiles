#!/usr/bin/env bash

# install amd rx560 driver
# https://www.amd.com/en/support/graphics/radeon-500-series/radeon-rx-500-series/radeon-rx-560

# sudo apt install zsh

# chsh -s $(which zsh)

# logout and logback

# install sogou input method
# https://gitee.com/laomocode/fcitx-sogouimebs

# sudo apt-get install tmux curl python2 python3 neovim universal-ctags global \
#  doxygen id-utils python3-pygments tmux fzf fonts-firacode shellcheck \
#  llvm clang clang-tools clangd clang-tidy llvm-dev libclang-dev cmake \
#  default-jdk maven openjdk-8-jdk openjdk-8-jre

# install oh-my-zsh
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install vim config
# git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
# sh ~/.vim_runtime/install_basic_vimrc.sh

# install rustup
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# cargo install ripgrep fd-find lsd exa git-delta

# install pyenv
# https://github.com/pyenv/pyenv/wiki/Common-build-problems
# curl https://pyenv.run | bash
# pyenv install 2.7.18
# pyenv install 3.8.6
# pyenv global 2.7.18 3.8.6

# install pip
# curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

# python2 get-pip.py
# python3 get-pip.py

# install nvm
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
# nvm install --lts

# for neovim
# sudo add-apt-repository ppa:neovim-ppa/stable
# sudo apt-get update
# sudo apt-get install neovim

# pip2 install pynvim tmuxp
# pip3 install pynvim tmuxp
# npm install -g neovim

# vim-plug

# vim
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
#  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# neovim
# sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# install nerd font
# install jetbrains nerd font
# wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip -O ~/.local/share/fonts/JetBrainsMono

# install powerlevel10k
# git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# ====================== update config ====================================
SRC_DIR=$(pwd)

files=".editorconfig .eslintrc.json .gitconfig .p10k.zsh .projectile .tmux.conf .vimrc .zprofile .zshenv .zshrc"
for file in $files; do
  echo "create symbole link for $file"
  ln -sf "$SRC_DIR"/"$file" ~/"$file"
done
mkdir -p ~/.config/nvim/
ln -sf "$SRC_DIR"/.vimrc ~/.config/nvim/init.vim

dirs=".vim .tmuxp"
for dir in $dirs; do
  echo "create symbole link for $dir"
  ln -sf "$SRC_DIR"/"$dir" ~/
done

cd cpp || exit 1

cxx_files=".clang-format .clang-tidy"

for file in $cxx_files; do
  echo "create symbole link for $file"
  ln -sf "$SRC_DIR/cpp/$file" "$HOME/$file"
done
