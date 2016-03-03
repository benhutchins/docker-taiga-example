FROM benhutchins/taiga
MAINTAINER Benjamin Hutchins <ben@hutchins.co>

# Install additional extensions
RUN pip install --no-cache-dir \
      taiga-contrib-slack \
      taiga-contrib-ldap-auth

ADD https://github.com/taigaio/taiga-contrib-slack/raw/master/front/dist/slack.js /usr/src/taiga-front-dist/dist/slack.js

COPY taiga-conf/local.py /taiga/local.py
COPY taiga-conf/conf.json /taiga/conf.json
