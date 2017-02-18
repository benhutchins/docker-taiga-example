# Example Taiga Setup

This repo contains several example configurations for setting up Taiga using [docker-taiga](https://github.com/benhutchins/docker-taiga).

## Simple

If you want a very simple example, simply pull the `docker-compose.yml` file from here:
https://github.com/benhutchins/docker-taiga/tree/master/docker-compose.yml

You will see a lot

# Customized Example (Adds Slack & LDAP support)

For a slightly more customized setup, the [simple](https://github.com/benhutchins/docker-taiga-example/tree/master/simple/) example uses the latest stable taiga image from [benhutchins/taiga](https://hub.docker.com/r/benhutchins/taiga/), then installs [taiga-contrib-slack](https://github.com/taigaio/taiga-contrib-slack) on top of it.
It optionally can add [taiga-contrib-ldap-auth](https://github.com/ensky/taiga-contrib-ldap-auth) for LDAP support.

# Advanced Example

For a more advanced example, which uses [taiga-events](https://hub.docker.com/r/benhutchins/taiga-events/) and configures a few additional plugins see the [advanced](https://github.com/benhutchins/docker-taiga-example/tree/master/advanced/) example.
