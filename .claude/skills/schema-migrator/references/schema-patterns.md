# Schema Patterns

- **Prisma:** Define models in `schema.prisma`. Run `prisma generate` and `prisma migrate dev`.
- **Drizzle:** Define schema in TypeScript. Use `drizzle-kit` for migrations.
- **SQLAlchemy:** Define models using `Base.metadata`. Use `alembic` for migrations.
- Always include timestamps (`created_at`, `updated_at`).
- Model relationships cleanly (1-to-N, N-to-N) with foreign keys.
