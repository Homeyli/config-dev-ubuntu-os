# CHANGE PASSWORD

echo "what is username ?"
read base_username;
echo "enter  $base_username  new password"
sudo passwd $base_username;
echo "enter  root  new password"
sudo passwd root;

# UPDATE & UPGRADE

## pyhton ppa 

sudo apt update -y;
sudo apt upgrade -y;
sudo apt autoremove;

sudo apt install wget;
sudo apt install curl;
sudo add-apt-repository ppa:deadsnakes/ppa;

# INSTALL CLI
echo "\n\n Install cli tools .."


## install docker 

sudo apt remove docker docker-engine docker.io containerd runc;

sudo apt install ca-certificates curl  gnupg lsb-release;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg;

echo  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update;
sudo apt install docker-ce docker-ce-cli containerd.io;
sudo apt-cache madison docker-ce;

echo "\n enter VERSION_STRING : ";
read DOCKER_VERSION_STRING;

sudo apt install docker-ce=$DOCKER_VERSION_STRING docker-ce-cli=$DOCKER_VERSION_STRING containerd.io;

sudo docker run hello-world;

## Install git 

echo "\n\n\t install git"
sudo apt install git -y;

## install php versions 5.6 & 7.3 & 7.4 & 8.0

sudo apt install php5.6 && php7.3 && php7.4 && php8.0 -y;
echo "install composer";
sudo apt install composer -y ;

echo "# Composer CLI bin export " >> .bashrc && echo 'export PATH="$PATH:$HOME/.config/composer/vendor/bin"' >> .bashrc;

### install laravel
echo "install laravel composer installer";
composer global require laravel/installer

## Install golang 
echo "\n\n Installing golang";
echo "\n Downloading golang";

wget https://golang.org/dl/go1.17.3.linux-amd64.tar.gz -c ;
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.17.3.linux-amd64.tar.gz

echo "# GoLang CLI bin export " >> .bashrc && echo 'export PATH=$PATH:/usr/local/go/bin' >> .bashrc;

echo "install successfully ";
sudo go version;

## Install c++ tools

 sudo apt install g++;
 
sudo apt install build-essential;
sudo apt install libfontconfig1;
sudo apt install mesa-common-dev;
sudo apt install libglu1-mesa-dev -y;


echo "g++ compiler installed successfully ";
sudo g++ --version;

## install python

### dev tools
sudo apt zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev

sudo apt install software-properties-common -y;
sudo apt install python3.8 -y;

echo "install successfully ";
sudo python --version;

## install npm and nodejs

curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -;
sudo apt install nodejs npm;

echo "node installed successfully";
node --version;
echo "npm installed successfully";
npm --version;

# Install apps with snap

sudo apt install snapd -y;
echo "snapcraft installed successfully\n";

## install todoist 
echo "installing todoist.. \n";
sudo snap install todoist;
echo "todoist installed successfully\n";

## install twist 
echo "installing twist.. \n";
sudo snap install twist;
echo "twist installed successfully\n";

## install code 
echo "installing vs code.. \n";
sudo snap install code --classic;
echo "vscode installed successfully\n";

## install sqlitebrowser 
echo "installing sqlitebrowser .. \n";
sudo snap install sqlitebrowser;
echo "sqlitebrowser installed successfully\n";

## install twinux 
echo "installing twinux .. \n";
sudo snap install twinux;
echo "twinux installed twinux\n";

## install anydesk 
echo "installing anydesk .. \n";

wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -;
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list;
sudo apt update;
sudo apt install anydesk -y;

echo "anydesk installed successfully\n";


## install filezilla 
echo "installing filezilla .. \n";
sudo apt install filezilla;
echo "filezilla installed successfully\n";


## install google-chrome 
echo "installing google-chrome  .. \n";

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
sudo dpkg -i google-chrome-stable_current_amd64.deb;
rm google-chrome-stable_current_amd64.deb -f;

echo "google-chrome  installed successfully \n";


## install android-studio  
echo "installing android-studio   .. \n";
sudo snap install android-studio --classic;
echo "android-studio installed successfully \n";


## install phpstorm  
echo "installing phpstorm   .. \n";
sudo snap install phpstorm --classic;
echo "phpstorm installed successfully \n";


## install goland  
echo "installing goland   .. \n";
sudo snap install goland --classic;
echo "goland installed successfully \n";

## install pycharm  
echo "installing pycharm   .. \n";
sudo snap install pycharm-professional --classic;
echo "pycharm installed successfully \n";

## install clion  
echo "installing clion   .. \n";
sudo snap install clion --classic;
echo "clion installed successfully \n";


# Create directories

mkdir ~/workshop && mkdir ~/workshop/tests
















