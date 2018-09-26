#!/bin/bash

PAYLOAD="{\"username\": \"webhookbot\", \"text\": \"This is test post via a webhookbot. Jenkins\", \"icon_emoji\": \":ghost:\"}"

curl -X POST --data-urlencode "payload=$PAYLOAD" ***REMOVED***
