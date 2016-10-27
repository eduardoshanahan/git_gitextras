FROM eduardoshanahan/git: latest

MAINTAINER Eduardo Shanahan <contact@eduardoshanahan.com>

RUN apk update \
&& git clone https://github.com/tj/git-extras.git
&& cd git-extras
&& git checkout $(git describe --tags $(git rev-list --tags --max-count=1))
&& make install

ENTRYPOINT /bin/sh
