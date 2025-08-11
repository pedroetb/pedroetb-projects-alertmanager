#!/bin/sh

cat ${CONFIG_PATH}/alertmanager-tmpl.yml \
	| sed "s@\${TELEGRAM_URL}@${TELEGRAM_URL}@g" \
	| sed "s@\${TELEGRAM_CHAT_ID}@${TELEGRAM_CHAT_ID}@g" \
	| sed "s@\${TELEGRAM_BOT_TOKEN}@${TELEGRAM_BOT_TOKEN}@g" \
	| sed "s@\${TELEGRAM_PARSE_MODE}@${TELEGRAM_PARSE_MODE}@g" \
	| sed "s@\${TELEGRAM_DISABLE_NOTIFICATIONS}@${TELEGRAM_DISABLE_NOTIFICATIONS}@g" \
	> ${CONFIG_PATH}/alertmanager.yml

set -- /bin/alertmanager "${@}"

exec "${@}"
