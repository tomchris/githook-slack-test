#!/bin/bash

BRANCH_NAME="$(git rev-parse --abbrev-ref HEAD)"
COMMIT_MSG="$(git log -1 HEAD --pretty=medium |  awk -v ORS='\\n' '1' | awk '{gsub(/\"/,"\\\"")}8')"
WEBHOOK_URL=$(cat ./webhook)
PAYLOAD='{
    "username":"webhookbot",
    "icon_emoji":":ghost:",
    "attachments":[
    {
      "fallback":"*GIT COMMIT* from '$(whoami)@$(hostname)'",
      "color":"#36a64f",
      "pretext":"*GIT COMMIT*",
      "author_name":"'$(whoami)@$(hostname)'",
      "text":"Branch: '$BRANCH_NAME'\n Commit Message: '$COMMIT_MSG'",
      "ts":123456789
    }
    ]
  }'

curl -v -X POST  --data-urlencode "payload=$PAYLOAD" -s $WEBHOOK_URL 
