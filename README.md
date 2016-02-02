# Elixir Alpine Envconsul

This Dockerfile uses msaraiva's awesome elixir-alpine and adds envconsul to it.

It then makes sure that apps run within envconsul by providing an entrypoint.

## Requirements

- A consul server, available under the URI `consul`
- A file in `/app` called `.envconsul.hcl` that configures envconsul
