# Start from the official OpenCode sandbox template
FROM docker/sandbox-templates:opencode

USER root

# Inject the Inline Config JSON
# Note: We point the baseURL to the Nginx gateway
ENV OPENCODE_CONFIG_CONTENT='{ \
  "$schema": "https://opencode.ai/config.json", \
  "provider": { \
    "openrouter": { \
      "options": { \
        "baseURL": "http://host.docker.internal:55432/api/v1" \
      } \
    } \
  } \
}'

ENV OPENROUTER_API_KEY="junk-data-proxy-managed"

USER agent