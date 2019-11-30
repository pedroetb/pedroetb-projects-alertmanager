#!/bin/sh

cat /etc/alertmanager/alertmanager-tmpl.yml \
	| sed "s@\${SLACK_URL}@${SLACK_URL}@g" \
	| sed "s@\${SLACK_CHANNEL}@${SLACK_CHANNEL}@g" \
	| sed "s@\${SLACK_USER}@${SLACK_USER}@g" \
	> /etc/alertmanager/alertmanager.yml

set -- /bin/alertmanager "${@}"

exec "${@}"
