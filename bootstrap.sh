#/bin/bash

# umożliwienie zmiany shella ze skryptu
#sudo cp /etc/pam.d/chsh /etc/pam.d/chsh.o && sudo echo 'auth       sufficient   pam_wheel.so trust group=chsh' | cat - /etc/pam.d/chsh > /etc/pam.d/chsh
#groupadd chsh

sudo su vagrant
# instalacja najważniejszych pakietów
sudo apt-get update && sudo apt-get -qq install language-pack-pl vim git zsh

# zmiana na zsh + instalacja oh-my-zsh
sudo chsh -a -s /bin/zsh vagrant

cd /home/vagrant
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
sed 's/ZSH_THEME="robbyrussell"/ZSH_THEME="eastwood"/' ~/.zshrc

# instalacja dockera
wget -qO- https://get.docker.com/ | sh && sudo usermod -aG docker vagrant

sudo su

