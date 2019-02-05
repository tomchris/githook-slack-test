#!/bin/bash

PAYLOAD="{\"username\": \"webhookbot\", \"text\": \"This is test post via a webhookbot. Jenkins\", \"icon_emoji\": \":ghost:\"}"

curl -X POST --data-urlencode "payload=$PAYLOAD" https://hooks.slack.com/services/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
