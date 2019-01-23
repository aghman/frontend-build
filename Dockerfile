# Pull base image.
FROM node:8-alpine
MAINTAINER aghman

# Install dependencies
RUN apk update && \
    apk upgrade && \
    apk add --quiet --no-cache bash git ruby-dev build-base ruby libffi-dev && \
    yarn global add bower gulp && \
    yarn cache clean && \
    rm -rf /var/cache/apk/* /tmp/*
# Install Compass (aka Ruby stuff)
RUN gem update --system --no-rdoc --no-ri
RUN gem install susy --no-rdoc --no-ri
RUN gem install compass --no-rdoc --no-ri

CMD "/bin/bash"
