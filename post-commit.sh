#!/bin/bash

PAYLOAD="{\"username\": \"webhookbot\", \"text\": \"This is post from $(whoami)@$(hostname) via a webhookbot. Testing a git hook, 
\`\`\` 
User:$(whoami) 
Host: $(hostname) 
env
PWD is: $(pwd)
\`\`\`\", \"icon_emoji\": \":ghost:\"}"

curl -X POST --data-urlencode "payload=$PAYLOAD" https://hooks.slack.com/services/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