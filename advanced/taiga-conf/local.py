# Please modify this file as needed, see the local.py.example for details:
# https://github.com/taigaio/taiga-back/blob/master/settings/local.py.example
#
# Importing docker provides common settings, see:
# https://github.com/benhutchins/docker-taiga/blob/master/docker-settings.py
# https://github.com/taigaio/taiga-back/blob/master/settings/common.py
from .docker import *

PUBLIC_REGISTER_ENABLED = False
DEBUG = False
TEMPLATE_DEBUG = False

## Slack
# https://github.com/taigaio/taiga-contrib-slack
INSTALLED_APPS += ["taiga_contrib_slack"]

## LDAP
# see https://github.com/ensky/taiga-contrib-ldap-auth
# INSTALLED_APPS += ["taiga_contrib_ldap_auth"]

## GOGS
# see https://github.com/taigaio/taiga-contrib-gogs
INSTALLED_APPS += ["taiga_contrib_gogs"]
PROJECT_MODULES_CONFIGURATORS["gogs"] = "taiga_contrib_gogs.services.get_or_generate_config"

DEFAULT_FROM_EMAIL = "your@email.com"
SERVER_EMAIL = DEFAULT_FROM_EMAIL

# Uncomment and populate with proper connection parameters
# for enable email sending. EMAIL_HOST_USER should end by @domain.tld
EMAIL_BACKEND = "django.core.mail.backends.smtp.EmailBackend"
EMAIL_USE_TLS = True
EMAIL_HOST = "smtp.mail.com"
EMAIL_HOST_USER = "your@email.com"
EMAIL_HOST_PASSWORD = "password"
EMAIL_PORT = 587
