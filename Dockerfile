FROM eduardoshanahan/git:latest

MAINTAINER Eduardo Shanahan <contact@eduardoshanahan.com>

RUN apk update \
&&  apk add --virtual .install_dependencies alpine-sdk \
&&  git clone https://github.com/tj/git-extras.git \
&&  cd git-extras \
&&  git checkout $(git describe --tags $(git rev-list --tags --max-count=1)) \
&&  make install \
&&  rm -r /var/cache/apk \
&&  apk del .install_dependencies

ENTRYPOINT /bin/sh
