# Example Taiga Setup - Slack & LDAP Example

This example demonstrates how to use [benhutchins/docker-taiga](https://github.com/benhutchins/docker-taiga).
It adds a single extension, [taiga-contrib-slack](https://github.com/taigaio/taiga-contrib-slack)!

## How to use

First clone this repository and edit the configuration files (see [taiga-conf](https://github.com/benhutchins/docker-taiga-example/tree/master/taiga-conf)). View and edit `docker-compose.yml` and change the `TAIGA_HOSTNAME` environment variable and then run `up`:

    docker-compose build
    docker-compose up

### LDAP

To easily enable LDAP as well, simply uncomment it from the `Dockerfile` and `taiga-conf/local.py`,
then add this to your `taiga-conf/conf.json` file:

    "loginFormType": "ldap"
