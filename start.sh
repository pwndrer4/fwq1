#!/bin/bash
source /app/config.sh

service ssh start
service nginx start

echo "set ngrok token: $NGROK_TOKEN"
ngrok authtoken $NGROK_TOKEN
echo "start ngrok service"
ngrok tcp 22 --log=stdout > ngrok.log
ngrok tcp 8888 --log=stdout > ngrok1.log
ngrok tcp 80 --log=stdout > ngrok2.log
ngrok tcp 443 --log=stdout > ngrok3.log
