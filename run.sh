# CHANGE PASSWORD

echo "what is username ?"
read base_username;
echo "enter  $base_username new password"
passwd $base_username;
echo "enter  root  new password"
sudo passwd root;

# set image profile from github

wget https://avatars.githubusercontent.com/u/10195233 -c -O $base_username
sudo mv $base_username /var/lib/AccountsService/icons/$base_username -f

## PPA
# Python ppa
sudo add-apt-repository ppa:deadsnakes/ppa;
# PHP ppa
sudo add-apt-repository ppa:ondrej/php


# UPDATE & UPGRADE

sudo apt update -y;
sudo apt upgrade -y;
sudo apt autoremove;

sudo apt install wget curl openssl openssh-server apt-transport-https software-properties-common ca-certificates build-essential libfontconfig1 mesa-common-dev libglu1-mesa-dev zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev unzip mlocate python3-pydrive -y

# INSTALL CLI
echo "\n\n Install cli tools .."

## Install git 

echo "\n\n\t install git"
sudo apt install git -y;

## install php versions 5.6 & 7.3 & 7.4 & 8.0

sudo apt install php5.6 php7.3 php7.4 php7.4-mysql php-pear php7.4-dev php8.0 php8.0-mysql php-xml php-mbstring -y;
#install trader lib
sudo pecl install trader

echo "install composer ..";
sudo apt install composer -y ;

echo "# Composer CLI bin export " >> .bashrc && echo 'export PATH="$PATH:$HOME/.config/composer/vendor/bin"' >> .bashrc;

### install laravel
echo "install laravel composer installer";
composer global require laravel/installer

## Install golang 
echo "\n\n Installing golang";
echo "\n Downloading golang";

wget https://golang.org/dl/go1.17.3.linux-amd64.tar.gz -c ;
echo "go download successfully ";
echo "extracting go...";

sudo rm -rf /usr/local/go && tar -C /usr/local -xzf go1.17.3.linux-amd64.tar.gz;

echo "add go env in ~/.bashrc...";
echo "# GoLang EXPORT" >> ~/.bashrc && echo 'export GOPATH="$HOME/go"' >> ~/.bashrc && echo 'export GOBIN="$GOPATH/bin"' >> .bashrc && echo 'export PATH="$PATH:$GOBIN"' >> .bashrc && echo 'export PATH="$PATH:/usr/local/go/bin"' >> .bashrc;

go env -w GO111MODULE=auto;
echo "go install successfully ";
sudo go version;

## Install c++ tools

sudo apt install g++ -y;

echo "g++ compiler installed successfully ";
sudo g++ --version;

## install python

sudo apt install python3.8 -y;

echo "install successfully ";
sudo python --version;

## install npm and nodejs

#sudo apt install node-gyp nodejs npm;

echo "node installed successfully";
node --version;
echo "npm installed successfully";
npm --version;


## install docker 

sudo apt remove docker docker-engine docker.io containerd runc;

sudo apt install gnupg lsb-release;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg;

echo  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update -y;
sudo apt install docker-ce docker-ce-cli containerd.io -y;
sudo apt-cache madison docker-ce;

echo "\n enter VERSION_STRING : ";
read DOCKER_VERSION_STRING;

sudo apt install docker-ce=$DOCKER_VERSION_STRING docker-ce-cli=$DOCKER_VERSION_STRING containerd.io;

sudo docker run hello-world;

# Install apps with snap

sudo apt install snapd -y;
echo "snapcraft installed successfully\n";

## install code 
echo "installing vs code.. \n";
sudo snap install code --classic;
echo "vscode installed successfully\n";

#install ext
sh install-ext-vscode.sh ;

## install todoist 
echo "installing todoist.. \n";
sudo snap install todoist;
echo "todoist installed successfully\n";

## install twist 
echo "installing twist.. \n";
sudo snap install twist;
echo "twist installed successfully\n";

## install vlc 
echo "installing vlc.. \n";
sudo snap install vlc;
echo "vlc installed successfully\n";

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
sudo apt install filezilla -y;
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

## install telegram  
echo "installing telegram   .. \n";
sudo snap install telegram-desktop
echo "telegram installed successfully \n";

## install typora  
echo "installing typora   .. \n";
sudo snap install typora
echo "typora installed successfully \n";


# Create directories


