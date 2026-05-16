#!/bin/sh

# Configuration for MacBook

## Install Homebrew

if command -v brew &>/dev/null; then
    echo "Homebrew is already installed. Skipping installation."
else
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

## Recommanded applications

brew install zsh vim python warp    # strongly recommended to install
# install omyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# brew install zsh-syntax-highlighting zsh-completions # install plugins for zsh
chsh -s $(which zsh)

brew install ollama anomalyco/tap/opencode # strongly recommended for AI era

brew install node go java lua rust git gh curl wget openssl gcc chromedriver mole neovim expect sshpass tree

brew install --cask wechat qq zoom google-chrome iina raycast skim keepingyouawake screenflow doubao chatgpt

brew install --cask visual-studio-code sublime-text zed texshop skim obsidian

## Optional

# brew install julia sbcl ruby zig nim sbcl swi-prolog poetry luarocks sqlite ffmpeg nmap pandoc plantuml sphinx-doc graphviz docker
# brew install openclaw zeroclaw notesmd-cli
# brew install --cask neteasymusic tencent-meeting telegram-desktop mailmaster ghostty discord evernote baidunetdisk ubersicht thunder lyx latexit mark-text docker-desktop rectangle moom downit selfcontrol
# brew install --cask cherry-studio lobehub claude-code
# npm install -g obsidian-headless

## path configure in `myprofile` (Optional)

# echo "This is my personal configuration." >> ~/myprofile

# MYWOKR_PATH="$HOME/Programming/Python/mywork"  # your own work path of python
# SCRIPT_PATH="$HOME/Scripts"  # scripts crated by yourself

# if [[ ":$PATH:" != *":$MYWORK_PATH:"* ]]; then
#     echo "export PATH=\"\$PATH:$MYWORK_PATH\"" >> ~/myprofile
#     source ~/myprofile
# else
#     echo "Path $MYWORK_PATH is already in your PATH."
# fi

# if [[ ":$PATH:" != *":$SCRIPT_PATH:"* ]]; then
#     echo "export PATH=\"\$PATH:$SCRIPT_PATH\"" >> ~/myprofile
#     source ~/myprofile
# else
#     echo "Path $SCRIPT_PATH is already in your PATH."
# fi

# cat >> ~/myprofile <<EOF

# eval "$(ssh-agent -s)" >/dev/null
# ssh-add ~/.ssh/myssh >/dev/null 2>&1
# ssh-add ~/.ssh/myssh-gitee >/dev/null 2>&1

# # ------
# alias python=python3
# alias pip=pip3

# EDITOR="vim"
# EOF

cat >> .zshrc <<EOF
# configuration from myprofile
source myprofile
EOF

## configure pip

cat >> .pip <<EOF
[global]
index-url = http://mirrors.aliyun.com/pypi/simple/

[install]
trusted-host = mirrors.aliyun.com
EOF

## Others

# brew install opam
# opam install coq -y

# brew install ghcup
# ghcup install cabal
