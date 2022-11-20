#!/bin/bash
npm install -g @tsmodule/tsmodule
git clone https://github.com/marinacabrera/auth0-node-client
cd auth0-node-client
yarn && yarn build && yarn link
cd ..
git clone https://github.com/marinacabrera/upg-fork
cd upg-fork
yarn link "auth0-node-client" && yarn && yarn build
echo "source $CODESPACE_VSCODE_FOLDER/.bash_aliases" >> ~/.bashrc
unset GITHUB_TOKEN
echo "Type 'upg login', then universal-program-generate useful stuff :)"
