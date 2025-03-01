FROM node:23-alpine3.19

RUN apk update --no-cache && apk add --no-cache bash git gcc musl-dev curl make wget bash-completion openssh-client

ENV SHELL=/bin/bash

RUN echo "source /usr/share/bash-completion/completions/git" >> /root/.bashrc

WORKDIR /usr/src/app