USE_EVENTS=false

if [ "$1" = "--with-events" ]; then
  USE_EVENTS=true
fi

if [ ! -e "slack.js" ]; then
  # Download slack.js from https://github.com/taigaio/taiga-contrib-slack
  wget https://github.com/taigaio/taiga-contrib-slack/raw/master/front/dist/slack.js
fi

if [ -z "$TAIGA_HOSTNAME" ]; then
  TAIGA_HOSTNAME=$(docker-machine ip default) || $(boot2docker ip)

  if [ $? -ne 0 ]; then
    echo "No 'TAIGA_HOSTNAME' specified. Please set before running start.sh"
    exit 1
  fi
fi

docker build -t mytaiga .

docker run -d --restart=always \
  --name taiga-postgres \
  -e POSTGRES_PASSWORD=password \
  postgres

if [ $USE_EVENTS = true ]; then
  docker run -d --restart=always \
    --name taiga-redis \
    redis:3

  docker run -d --restart=always \
    --name taiga-rabbit \
    --hostname taiga \
    rabbitmq:3

  docker run -d --restart=always \
    --name taiga-celery \
    --link taiga-rabbit:rabbit \
    celery

  docker run -d --restart=always \
    --name taiga-events \
    --link taiga-rabbit:rabbit \
    benhutchins/taiga-events

  sleep 10

  docker run -itd --restart=always \
    --name taiga \
    --link taiga-postgres:postgres \
    --link taiga-redis:redis \
    --link taiga-rabbit:rabbit \
    --link taiga-events:events \
    -e TAIGA_HOSTNAME=$TAIGA_HOSTNAME \
    -p 80:80 \
    mytaiga
else
  sleep 10

  docker run -itd --restart=always \
    --name taiga \
    --link taiga-postgres:postgres \
    -e TAIGA_HOSTNAME=$TAIGA_HOSTNAME \
    -p 80:80 \
    mytaiga
fi
