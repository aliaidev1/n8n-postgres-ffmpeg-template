# n8n + Postgres + FFmpeg Dokploy Template

This repository provides a fully structured Dokploy blueprint that deploys the automation platform **n8n** with a persistent **Postgres** database and an **FFmpeg**-enabled runtime for media workflows. It serves as a starting point you can fork or clone, customize, and publish to your Dokploy catalog.

## Stack overview
- **n8n** workflow engine running inside a container that includes FFmpeg for video and audio processing commands.
- **Postgres 17 (Alpine)** backing database for n8n credentials and executions.
- **Dokploy template artifacts** (Dockerfile, docker-compose, template metadata) for easy installation.

## How to use this template
1. **Clone this repository**:
   ```bash
   git clone https://github.com/YOUR-USERNAME/n8n-postgres-ffmpeg-template.git
   cd n8n-postgres-ffmpeg-template
   ```
2. **Customize variables** inside `blueprints/n8n-postgres-ffmpeg/template.toml` (domain, passwords, timezone, etc.) and add secrets to your Dokploy environment as needed.
3. **Push the repository to GitHub** (or your preferred Git remote) so Dokploy can access it.
4. **Install through Dokploy** by selecting "Import Repository" and pointing to your fork. Dokploy reads `template.toml`, provisions the stack, and exposes n8n on the domain you set.
5. **Operate n8n** by logging in via the configured domain and start building workflows that leverage FFmpeg and Postgres-backed data.

## License
Released under the [MIT License](LICENSE). You are free to adapt and redistribute this template.
