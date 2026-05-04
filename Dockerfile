FROM node:14-slim
LABEL maintainer="naoigcat <17925623+naoigcat@users.noreply.github.com>"
ENV NODE_ENV=production \
    NPM_CONFIG_FUND=false \
    NPM_CONFIG_UPDATE_NOTIFIER=false
RUN npm install -g redoc-cli@0.13.21 && \
    npm cache clean --force && \
    mkdir -p /app && \
    chown node:node /app
WORKDIR /app
USER node
ENTRYPOINT ["redoc-cli"]
CMD []
