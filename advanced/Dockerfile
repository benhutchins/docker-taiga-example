FROM benhutchins/taiga
MAINTAINER Benjamin Hutchins <ben@hutchins.co>

# Install additional extensions
RUN pip install --no-cache-dir \
      taiga-contrib-slack \
      taiga-contrib-ldap-auth \
      taiga-contrib-gogs

ADD https://github.com/taigaio/taiga-contrib-slack/raw/master/front/dist/slack.js /usr/src/taiga-front-dist/dist/slack.js
ADD https://raw.githubusercontent.com/taigaio/taiga-contrib-gogs/master/front/dist/gogs.js /usr/src/taiga-fromt-dist/dist/gogs.js
ADD https://raw.githubusercontent.com/taigaio/taiga-contrib-gogs/master/front/dist/gogs.json /usr/src/taiga-fromt-dist/dist/gogs.json

COPY taiga-conf/local.py /taiga/local.py
COPY taiga-conf/conf.json /taiga/conf.json

RUN python manage.py migrate taiga_contrib_gogs

