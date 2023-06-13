FROM node:lts
ENV NPM_CONFIG_UPDATE_NOTIFIER=false
RUN npm install -g @oasislabs/opengsn-cli
