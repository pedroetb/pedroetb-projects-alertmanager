#!/bin/sh

cat /etc/alertmanager/config-tmpl.yml \
	| sed "s@\${SLACK_URL}@${SLACK_URL}@g" \
	| sed "s@\${SLACK_CHANNEL}@${SLACK_CHANNEL}@g" \
	| sed "s@\${SLACK_USER}@${SLACK_USER}@g" \
	> /etc/alertmanager/config.yml

mv /tmp/alertmanager.yml /etc/alertmanager/alertmanager.yml

set -- /bin/alertmanager "${@}"

exec "${@}"
