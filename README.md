# Example Taiga Setup

This repo contains several example configurations for setting up Taiga using [docker-taiga](https://github.com/benhutchins/docker-taiga).

## Simple Example

If you want a very simple example, simply pull the `docker-compose.yml` file from here:
https://github.com/benhutchins/docker-taiga/tree/master/docker-compose.yml

## Customized Example (Adds Slack & LDAP support)

For a slightly more customized setup, this directory provides an example of how
to extend docker-taiga and add [taiga-contrib-slack](https://github.com/taigaio/taiga-contrib-slack) and [taiga-contrib-ldap-auth](https://github.com/ensky/taiga-contrib-ldap-auth) LDAP
plugins.

To use this example, as-is, simply clone this repo and startup Docker:

```bash
git clone https://github.com/benhutchins/docker-taiga-example.git mytaiga
cd mytaiga/

# Optional, but likely desired, update your configuration now
vi docker-compose.yml # Be sure to update the TAIGA_HOSTNAME
vi taiga-conf/conf.json
vi taiga-conf/local.py

# Startup docker containers
docker-compose  up -d

# Wait ~30 seconds. The taiga container will initialize your postgres database.

# Now open your web browser:
open http://localhost/
````

### How to enable the LDAP plugin

To enable LDAP as well:

1. Uncomment the relevant lines from the `Dockerfile` and `taiga-conf/local.py`
2. Add this to your `taiga-conf/conf.json` file:

    "loginFormType": "ldap",

### How to enable taiga-events

To enable [taiga-events](https://github.com/taigaio/taiga-events):

1. Uncomment relevant lines from `docker-compose.yml`
2. Update to `eventsUrl` inside the `taiga-conf/conf.json` file
