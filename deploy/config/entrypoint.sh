#!/bin/sh

cat ${CONFIG_PATH}/alertmanager-tmpl.yml \
	| sed "s@\${SLACK_URL}@${SLACK_URL}@g" \
	| sed "s@\${SLACK_CHANNEL}@${SLACK_CHANNEL}@g" \
	| sed "s@\${SLACK_USER}@${SLACK_USER}@g" \
	> ${CONFIG_PATH}/alertmanager.yml

set -- /bin/alertmanager "${@}"

exec "${@}"
