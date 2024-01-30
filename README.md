# bot

```
echo BOT_TOKEN=<bot_token> >> .env
go build -o ./bin ./bot
./bin/bot
```

# webhook

```
echo WEBHOOK_SECRET=<webhook_secret> >> .env
go build -o ./bin ./webhook
./bin/webhook
```

# docker-compose

```
echo NGROK_AUTHTOKEN=<ngrok_token> >> .env
echo NGROK_DOMAIN=<domain> >> .env
docker compose up -d
```
