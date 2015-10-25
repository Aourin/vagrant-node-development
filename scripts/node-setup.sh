#Install NVM via curl
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash

#Provide NVM for rest of script
source ~/.nvm/nvm.sh

#Install Legacy version and latest (4)
nvm install 0.12
nvm install 4

#Alias default and legacy
nvm alias default 4
nvm alias legacy 0.12

#Install and Update globals
npm install -g npm

cp /vagrant/configuration/bashrc ~/.bashrc
