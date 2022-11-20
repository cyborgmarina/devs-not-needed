# [Choice] Node.js version (use -bullseye variants on local arm64/Apple Silicon): 18, 16, 14, 18-bullseye, 16-bullseye, 14-bullseye, 18-buster, 16-buster, 14-buster
ARG VARIANT=18-buster
FROM mcr.microsoft.com/vscode/devcontainers/typescript-node:${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends wget

# [Optional] Uncomment if you want to install more global node packages
WORKDIR /upg-package
RUN npm install -g @tsmodule/tsmodule yarn
RUN git clone https://github.com/marinacabrera/upg-fork
WORKDIR /upg-package/upg-fork
RUN wget https://github.com/marinacabrera/auth0-node-client/releases/download/v0.0.1/marinacabrera-auth0-node-client-v2.4.7.tgz
RUN yarn && yarn build
WORKDIR /upg-package/upg-fork/packages/upg
RUN yarn pack
RUN mv gptlabs-upg-v0.1.11.tgz /upg-package/
RUN npm install -g file:gptlabs-upg-v0.1.11.tgz