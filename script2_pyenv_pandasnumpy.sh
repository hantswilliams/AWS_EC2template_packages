#!/bin/bash

#Items that have been done / included within this template: 
#Note - for this file to run in ubuntu, will need to do chmod a+x /where/i/saved/it/hello_world.sh


echo "Performing apt-get update"
#first to general update:
yes | sudo apt-get update
yes | sudo apt-get install build-essential
yes | sudo apt-get install zlib1g-dev
yes | sudo apt-get install libssl-dev libbz2-dev libreadline-dev libsqlite3-dev


git clone https://github.com/pyenv/pyenv.git ~/.pyenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bashrc

exec "$SHELL"

pyenv install 3.6.2
pyenv global 3.6.2 

pip install pandas numpy requests  

echo 'its done...'