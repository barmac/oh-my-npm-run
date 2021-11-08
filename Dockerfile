FROM node:14-alpine
RUN apk add --no-cache jq
RUN apk add --no-cache zsh
SHELL [ "/bin/zsh", "-c" ]
COPY oh-my-npm-run.zsh .

RUN autoload -Uz compinit && compinit && source ./oh-my-npm-run.zsh
