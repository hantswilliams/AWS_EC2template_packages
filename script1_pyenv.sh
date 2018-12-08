#!/bin/bash

#Items that have been done / included within this template: 
#Note - for this file to run in ubuntu, will need to do 
#chmod a+x /where/i/saved/it/hello_world.sh

echo "Performing apt-get update"
#first to general update:
sudo apt-get update

##IMPORTANT - TO INSTALL PYENV - TO INSTALL PYENV - TO INSTALL PYENV - TO INSTALL PYENV 
##This simple install of PYENV was found @ https://gist.github.com/softwaredoug/a871647f53a0810c55ac
yes | sudo apt-get install git python-pip make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev
yes | sudo pip install virtualenvwrapper

git clone https://github.com/yyuu/pyenv.git ~/.pyenv
git clone https://github.com/yyuu/pyenv-virtualenvwrapper.git ~/.pyenv/plugins/pyenv-virtualenvwrapper

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'pyenv virtualenvwrapper' >> ~/.bashrc

exec "$SHELL"
bash --login

pyenv install 3.6.2
pyenv global 3.6.2 

##note - it looks like might need to reset the shell after downloading 3.6.2 in order for it to happen // e.g., global set 


