#!/bin/bash


# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i google-chrome-stable_current_amd64.deb

# spotify
sudo apt-get install snapd

sudo snap install spotify

# teams
sudo apt install curl

curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/sources.list.d/teams.list'

sudo apt update

sudo apt install teams

# docker https://docs.docker.com/engine/install/ubuntu/
sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg	

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

# zsh https://www.tecmint.com/install-zsh-in-ubuntu/
sudo apt install zsh
chsh -s $(which zsh)

# Oh-my-zsh!  https://dev.to/mskian/install-z-shell-oh-my-zsh-on-ubuntu-1804-lts-4cm4
sudo apt-get install powerline fonts-powerline
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

# Powerlevel10k
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# VsCode
sudo snap install --classic code

# Ruby
sudo apt install ruby

# md viewer
sudo gem install mdless

# htop
sudo apt install htop

# mysql
sudo apt install mysql-client

# mysql client
sudo snap install mysql-workbench-community
sudo snap connect mysql-workbench-community:password-manager-service :password-manager-service

# Manual steps
echo "To enable Powerlevel10k zsh theme, edit your ~/.zshrc and set ZSH_THEME=\"powerlevel10k/powerlevel10k\""
