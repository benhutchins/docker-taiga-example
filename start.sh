if [ ! -e "slack.js" ]; then
  # Download slack.js from https://github.com/taigaio/taiga-contrib-slack
  wget https://github.com/taigaio/taiga-contrib-slack/raw/master/front/dist/slack.js
fi

if [ -z "$TAIGA_HOSTNAME" ]; then
  echo "No 'TAIGA_HOSTNAME' specified. Please set before running start.sh"
  exit 1
fi

docker build -t mytaiga .

docker run \
  --restart=always \
  -d \
  --name taiga-postgres \
  postgres

sleep 10

docker run \
  --restart=always \
  -d \
  --name mytaiga \
  -p 80:80 \
  --link taiga-postgres:postgres \
  -e TAIGA_HOSTNAME=$TAIGA_HOSTNAME \
  mytaiga
