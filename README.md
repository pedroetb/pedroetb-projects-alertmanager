# alertmanager

Handler for Prometheus alerts, allow silencing and routing alerts to multiple services. Inspired by <https://github.com/stefanprodan/swarmprom>

## Telegram receiver

First, create a bot <https://core.telegram.org/bots#creating-a-new-bot> (using [@BotFather](https://t.me/botfather)) and save the token.

There is no need to create a different one for each environment, because same bot can be joined to multiple chat groups.

Don't add your bot when creating the chat group, because this event won't be reported at `getUpdates`.

Get chat group ID from <https://api.telegram.org/bot${TELEGRAM_BOT_TOKEN}/getUpdates>.
