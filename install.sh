#!/bin/bash
npm install -g @tsmodule/tsmodule
git clone https://github.com/marinacabrera/auth0-node-client
cd auth0-node-client
yarn && yarn build && yarn link
cd ..
git clone https://github.com/marinacabrera/upg-fork
cd upg-fork
yarn link "auth0-node-client" && yarn && yarn build
echo "alias upg='node /workspaces/devs-not-needed/upg-fork/packages/upg/dist/bin.js'" >> ~/.bash_aliases
bash
unset GITHUB_TOKEN
node /workspaces/devs-not-needed/upg-fork/packages/upg/dist/bin.js login
