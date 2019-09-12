#!/bin/sh

echo "Creating mail user for authentication ..."
addmailuser $MAIL_AUTH_USERNAME $MAIL_AUTH_PASSWORD

echo "Generating DKIM configuration ..."
generate-dkim-config

echo "Starting Mail Server"
supervisord -c /etc/supervisor/supervisord.conf