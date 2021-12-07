FROM node:16-alpine
LABEL maintainer="naoigcat <17925623+naoigcat@users.noreply.github.com>"

RUN npm install -g redoc-cli@0.12.1

WORKDIR /app
ENTRYPOINT ["redoc-cli"]
CMD []
