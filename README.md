# Example Taiga Setup

This project serves as an example demonstrating how to use [benhutchins/docker-taiga](https://github.com/benhutchins/docker-taiga). Please see that project for more details.

## How to use

First clone this repository and edit the configuration files (see [taiga-conf](https://github.com/benhutchins/docker-taiga-example/tree/master/taiga-conf)). Then if you have Docker Compose, edit `docker-compose.yml` and change the `TAIGA_HOSTNAME` environment variable and then run `up`:

		docker-compose up

Otherwise, if you don't have Docker Compose, run:

		TAIGA_HOSTNAME=taiga.mycompany.com ./start.sh --with-events

## Extensions

This example installs a few extensions to show how you might do that using [benhutchins/docker-taiga](https://github.com/benhutchins/docker-taiga).

### Slack

> [taiga-contrib-slack](https://github.com/taigaio/taiga-contrib-slack).

You'll need to download the appropriate compiled `slack.js` file from this repo if rebuilding. To get the latest run:

	wget https://github.com/taigaio/taiga-contrib-slack/raw/master/front/dist/slack.js

### LDAP

> [taiga-contrib-ldap-auth](https://github.com/ensky/taiga-contrib-ldap-auth)

You'll need to configure your `local.py` file with the correct LDAP server details. Please see the project link above for details.
