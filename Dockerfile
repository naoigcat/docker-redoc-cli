FROM node:18-alpine
LABEL maintainer="naoigcat <17925623+naoigcat@users.noreply.github.com>"

RUN npm install -g redoc-cli@0.13.13

WORKDIR /app
ENTRYPOINT ["redoc-cli"]
CMD []
