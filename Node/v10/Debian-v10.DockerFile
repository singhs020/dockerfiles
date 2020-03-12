FROM debian:latest
ARG BUILD_DATE

LABEL maintainer="Simranjeet Singh"
LABEL version="1.0.0"
LABEL build-date=$BUILD_DATE

RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get update \
    && apt-get install -y curl \
    && apt-get -y autoclean

# Define env var
ENV NVM_DIR /usr/local
ENV NODE_VERSION 10.19.0

# install nvm
RUN curl --silent -o- https://raw.githubusercontent.com/creationix/nvm/v0.35.3/install.sh | bash

# install node and npm
RUN source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

ENTRYPOINT ["/bin/bash"]
