FROM linuxbrew/brew

LABEL maintainer="Simranjeet Singh"
LABEL version="1.0.0"
LABEL build-date=$BUILD_DATE

# Define env var
ENV NVM_DIR /usr/local
ENV NODE_VERSION 10.19.0

# install nvm
RUN curl --silent -o- https://raw.githubusercontent.com/creationix/nvm/v0.35.3/install.sh | bash

# install node and npm
RUN bash -c 'source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default'

#installing AWS SAM
RUN brew tap aws/tap \
    && brew install aws-sam-cli

ENTRYPOINT ["/bin/bash"]