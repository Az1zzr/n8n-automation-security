#!/bin/sh
# Test the n8n webhook without Wazuh. Use /webhook-test/ while the editor is in
# "Listen for test event" (works for ONE call), and /webhook/ once the workflow is active.
curl -X POST "https://YOUR-N8N-DOMAIN/webhook-test/wazuh-alert" \
  -H "Content-Type: application/json" \
  -d '{"rule":{"id":"100002","level":10,"description":"Suspicious PowerShell activity"},"agent":{"name":"WIN11-LAB"}}'
