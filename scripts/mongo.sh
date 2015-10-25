#Add MongoDB Public Key for package management
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

#List file creation
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list

#Update Package Control
sudo apt-get update

#Install That Yummy Mongolian BBQ
sudo apt-get install -y mongodb-org

#Lock the version installed to not reinstall an update
echo "mongodb-org hold" | sudo dpkg --set-selections

#Create default data db folder mongo uses
sudo mkdir -p /data/db
