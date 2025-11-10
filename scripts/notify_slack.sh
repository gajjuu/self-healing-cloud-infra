#!/bin/bash
MESSAGE=$1
WEBHOOK_URL="https://hooks.slack.com/services/your/webhook/url"

curl -X POST -H 'Content-type: application/json' \
  --data "{\"text\":\"$MESSAGE\"}" $WEBHOOK_URL
