# Docker Patterns

- **Multi-stage builds:** Use multi-stage Dockerfiles to keep production images small.
- **Node.js:** Use `node:18-alpine` or `node:20-alpine`. Run as non-root user.
- **Python:** Use `python:3.11-slim`.
- **Docker Compose:** Include necessary services like `db` (postgres), `redis`, and the `web`/`api` services. Setup healthchecks and depends_on.
- Provide a clear `.env.example` file.
