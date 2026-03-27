# opencode-openrouter-docker-sandbox

A secure way to run OpenCode with OpenRouter as a provider in a Docker Sandbox until official Docker support is added.
# Include a mermaid diagram here of the way this works

# start the nginx server
```shell
docker compose down
docker compose up -d
```

# build the Sandbox
```shell
docker build -t opencode-openrouter-sandbox:v1 .
```

# run the Sandbox
```shell
# cd to the directory where you want to run the sandbox
docker sandbox run -t opencode-openrouter-sandbox:v1 --name opencode-openrouter-sandbox opencode -- --model 'openrouter/google/gemini-3-flash-preview'
docker sandbox network proxy opencode-openrouter-sandbox --allow-host "localhost:55432"
```

## Helpful commands

# cleanup ALL Sandboxes
```shell
docker sandbox reset
```