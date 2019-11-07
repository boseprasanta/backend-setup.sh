#!

COLOR='\033[1;33m'
NC='\033[0m' # No Color

printf "${COLOR}Updating information on the newest versions of packages and their dependencies.${NC}\n"

apt-get update

printf "${COLOR}Installing firefox..${NC}\n"

sudo apt install firefox

printf "${COLOR}firefox installed / updated ${NC}\n"

printf "${COLOR}Downloading Slack ${NC}\n"

wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.0.2-amd64.deb

printf "${COLOR}Installing Slack ${NC}\n"

sudo apt install ./slack-desktop-*.deb

printf "${COLOR}Slack installation complete ${NC}\n"

printf "${COLOR}VSCode installation attempted${NC}\n"

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF
sudo add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt -y install code

printf "${COLOR}Slack installation completed ${NC}\n"

printf "${COLOR}installing curl ... ${NC}\n"

sudo apt-get install curl

printf "${COLOR}Attempting NVM${NC}\n"

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

printf "${COLOR}NVM installation complete${NC}\n"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

printf "${COLOR}Node installation attemted${NC}\n"

nvm install node

printf "${COLOR}Node installation completed${NC}\n"

printf "${COLOR}Attempting mongodb installation${NC}\n"

sudo apt-get update

sudo apt-get install gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt-get install -y mongodb-org
sudo service mongod start

printf "${COLOR}mongo installation completed${NC}\n"

mongod --version 

printf "${COLOR}Mongodb installation complete${NC}\n"

printf "${COLOR}Attempting insomnia installation${NC}\n"

# Add to sources
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" | sudo tee -a /etc/apt/sources.list.d/insomnia.list

# Add public key used to verify code signature
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc | sudo apt-key add -

# Refresh repository sources and install Insomnia
sudo apt-get update
sudo apt-get install insomnia

printf "${COLOR}Insomnia Installation Completed${NC}\n"

# printf "${COLOR}Attempting robomongo Installation${NC}\n"

# robomongo has some unmet dependency | This need more work

# wget https://download.robomongo.org/0.8.5/linux/robomongo-0.8.5-x86_64.deb
# sudo dpkg -i robomongo-0.8.5-x86_64.deb

# printf "${COLOR}Robomongo Installation completed${NC}\n"
