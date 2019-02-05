#!/bin/bash

BRANCH_NAME="$(git rev-parse --abbrev-ref HEAD)"
COMMIT_MSG="$(cat $1)"
WEBHOOK_URL=$(cat ./webhook)
PAYLOAD="{\"username\": \"webhookbot\", \"text\": \"GIT COMMIT from $(whoami)@$(hostname). 
\`\`\` 

User:$(whoami) 
Host: $(hostname) 
Branch: $BRANCH_NAME
Commit Message: $COMMIT_MSG

\`\`\`\", \"icon_emoji\": \":ghost:\"}"

curl -X POST --data-urlencode "payload=$PAYLOAD" $WEBHOOK_URL 
