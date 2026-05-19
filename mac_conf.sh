#!/bin/sh

# Configuration for MacBook
# run the script under `~`!

## Install Homebrew

if command -v brew &>/dev/null; then
    echo "Homebrew is already installed. Skipping installation."
else
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

## Recommanded applications

# brew install zsh vim curl # macos has installed the tools

### strongly recommended to install
brew install python neovim visual-studio-code
brew install --cask warp raycast

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# brew install zsh-syntax-highlighting zsh-completions # install plugins for zsh
chsh -s $(which zsh)

### Strongly recommended for AI era
brew install ollama anomalyco/tap/opencode
brew install --cask doubao chatgpt

brew install node java go rust lua gcc git gh wget openssl expect sshpass pandoc tree mole

brew install --cask zoom wechat qq google-chrome iina keepingyouawake screenflow rectangle

brew install --cask sublime-text zed mactex texshop skim obsidian

## Soft Links
# [ -d /usr/local/bin ] || mkdir -p /usr/local/bin
# HOMEBREW_BIN=/opt/homebrew/bin
# sudo ln -s $HOMEBREW_BIN/python3.14 /usr/local/bin/python3

## Optional

# brew install ruby julia zig nim sbcl swi-prolog luarocks plantuml sphinx-doc graphviz sqlite ffmpeg nmap poetry docker ghostty
# brew install openclaw zeroclaw notesmd-cli
# brew install --cask tencent-meeting telegram-desktop mailmaster ghostty discord evernote baidunetdisk neteasymusic ubersicht thunder lyx latexit moom docker-desktop selfcontrol
# brew install --cask cherry-studio lobehub claude-code opencode-desktop
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

cat >> .pip/pip.conf <<EOF
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
