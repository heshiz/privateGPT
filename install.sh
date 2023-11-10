#!/bin/bash

sudo apt-get update -y

# install pyenv

sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev

curl https://pyenv.run | bash


echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n eval "$(pyenv init -)"\nfi' >> ~/.bashrc

source ~/.bashrc

pyenv install 3.11.5
pyenv global 3.11.5

# install poetry

curl -sSL https://install.python-poetry.org | python3 -

echo 'export PATH="$HOME/.poetry/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
