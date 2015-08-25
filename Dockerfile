FROM benhutchins/taiga
MAINTAINER Benjamin Hutchins <ben@hutchins.co>

# Install additional extensions
RUN pip install --no-cache-dir \
      taiga-contrib-slack \
      taiga-contrib-ldap-auth

COPY slack.js /usr/src/taiga-front-dist/dist/js/slack.js

COPY taiga-conf/local.py /taiga/local.py
COPY taiga-conf/conf.json /taiga/conf.json
