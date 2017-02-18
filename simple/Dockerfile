FROM benhutchins/taiga
MAINTAINER Benjamin Hutchins <ben@hutchins.co>

## Install Slack extension
RUN pip install --no-cache-dir taiga-contrib-slack
ADD https://github.com/taigaio/taiga-contrib-slack/raw/master/front/dist/slack.js /usr/src/taiga-front-dist/dist/slack.js

## Install LDAP extensions
# RUN pip install --no-cache-dir taiga-contrib-ldap-auth

COPY taiga-conf/local.py /taiga/local.py
COPY taiga-conf/conf.json /taiga/conf.json
