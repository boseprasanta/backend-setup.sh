COLOR='\033[1;33m'
NC='\033[0m' # No Color

printf "${COLOR}Updating information on the newest versions of packages and their dependencies.${NC}\n"

apt-get update

printf "${COLOR}Installing firefox..${NC}\n"

apt install firefox

printf "${COLOR}firefox installed / updated ${NC}\n"

printf "${COLOR}Downloading Slack ${NC}\n"

wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.0.2-amd64.deb

printf "${COLOR}Installing Slack ${NC}\n"

apt install ./slack-desktop-*.deb

printf "${COLOR}Slack installation complete ${NC}\n"

printf "${COLOR}VSCode installation attempted${NC}\n"

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF
sudo add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt -y install code

printf "${COLOR}Slack installation completed ${NC}\n"

printf "${COLOR}installing curl ... ${NC}\n"

apt-get install curl

printf "${COLOR}Attempting NVM${NC}\n"

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

printf "${COLOR}NVM installation complete${NC}\n"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

printf "${COLOR}Node installation attemted${NC}\n"

nvm install node

printf "${COLOR}Node installation completed${NC}\n"

