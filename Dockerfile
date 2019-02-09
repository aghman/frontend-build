# Pull base image.
FROM node:8-alpine
MAINTAINER aghman

# Install dependencies
RUN apk update && \
    apk upgrade && \
    apk add --quiet --no-cache bash git build-base ruby-bundler libffi-dev nodejs && \
    apk add "ruby<2.6" && \
    apk add "ruby-dev<2.6" && \
    yarn global add bower gulp && \
    gem install compass --no-rdoc --no-ri && \
    yarn cache clean && \
    rm -rf /var/cache/apk/* /tmp/*

WORKDIR /buildspace

CMD ["/bin/sh", "-l", "-c", "npm install;gulp build"]
