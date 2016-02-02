FROM msaraiva/elixir-dev:1.2.1
MAINTAINER Michael Schaefermeyer <michael.schaefermeyer@gmail.com>

ENV ENVCONSUL_VERSION 0.6.0

RUN mkdir -p /opt/envconsul/bin/
WORKDIR /opt/envconsul/bin

RUN wget https://github.com/hashicorp/envconsul/releases/download/v$ENVCONSUL_VERSION/envconsul_${ENVCONSUL_VERSION}_linux_amd64.zip \
    && unzip envconsul_${ENVCONSUL_VERSION}_linux_amd64.zip \
    && rm envconsul_${ENVCONSUL_VERSION}_linux_amd64.zip

ADD entrypoint.sh /opt/envconsul/entrypoint.sh

ENV PATH $PATH:/opt/envconsul/bin

ONBUILD ENTRYPOINT ["/opt/envconsul/entrypoint.sh"]
