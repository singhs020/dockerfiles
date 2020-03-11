FROM debian:latest
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# RUN apk update \
#     && apk add --no-cache bash \
#     && rm /bin/sh && ln -s /bin/bash /bin/sh \
#     # && apk add -U curl bash ca-certificates openssl ncurses coreutils python2 make gcc g++ libgcc linux-headers grep util-linux binutils findutils \
#     # && apk add bash build-base file git gzip libc6-compat ncurses ruby ruby-dbm ruby-etc ruby-irb ruby-json sudo \
#     && wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
# # RUN source $NVM_DIR/nvm.sh
# # RUN nvm install -s v10
# # RUN adduser -D -s /bin/bash linuxbrew \
# #     && echo 'linuxbrew ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers \
# #     && su -l linuxbrew \
# #     && sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)" \
# #     && PATH=$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH
# # RUN brew tap aws/tap \
# #     && brew install aws-sam-cli
