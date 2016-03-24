FROM benhutchins/taiga
MAINTAINER Benjamin Hutchins <ben@hutchins.co>

# Install additional extensions
RUN LC_ALL=C pip install --no-cache-dir \
      taiga-contrib-gogs \
      taiga-contrib-slack  

RUN mkdir -p /usr/src/taiga-front-dist/dist/plugins/slack
RUN mkdir -p /usr/src/taiga-front-dist/dist/plugins/gogs

ADD https://github.com/taigaio/taiga-contrib-slack/raw/master/front/dist/slack.json /usr/src/taiga-front-dist/dist/plugins/slack/slack.json
ADD https://github.com/taigaio/taiga-contrib-slack/raw/master/front/dist/slack.js /usr/src/taiga-front-dist/dist/plugins/slack/slack.js
ADD https://raw.githubusercontent.com/taigaio/taiga-contrib-gogs/master/front/dist/gogs.js /usr/src/taiga-front-dist/dist/plugins/gogs/gogs.js
ADD https://raw.githubusercontent.com/taigaio/taiga-contrib-gogs/master/front/dist/gogs.json /usr/src/taiga-front-dist/dist/plugins/gogs/gogs.json

COPY taiga-conf/local.py /taiga/local.py
COPY taiga-conf/conf.json /taiga/conf.json

