FROM debian:latest
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get update \
    && apt-get install -y curl \
    && apt-get -y autoclean \
    && apt install -y build-essential \
    && apt install -y git

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

# Add User for installing homebrew
RUN useradd -m -s /bin/bash linuxbrew \
	&& echo 'linuxbrew ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers

# install homebrew
USER linuxbrew
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)" \
    && PATH=$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH

#installing AWS SAM
RUN brew tap aws/tap \
    && brew install aws-sam-cli

ENTRYPOINT ["/bin/bash"]
