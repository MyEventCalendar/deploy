# EventCalendarDeploy

## Small demo stand with docker-compose

### Create env.file with secrets for tgbot
```shell
cat << EOF > tgbot/file.env
API_KEY=YOUR_API_KEY
EOF
```

### App docker-compose
```shell
docker compose up --build -d 
```
