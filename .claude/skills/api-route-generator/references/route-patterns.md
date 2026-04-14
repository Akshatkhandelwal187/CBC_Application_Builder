# API Route Patterns

- **REST (Express/FastAPI):**
  - Use standard HTTP methods: GET, POST, PUT, DELETE.
  - Pluralize resources: `/api/recipes`, `/api/recipes/:id`.
  - Always return JSON responses with standardized error formats `{ error: "Message" }`.

- **tRPC:**
  - Define clear input validation using Zod.
  - Separate queries (GET) and mutations (POST/PUT/DELETE).

- **Next.js Server Actions:**
  - Mark functions with `'use server'`.
  - Handle form data and return serializable objects.

- **Authentication:**
  - Protect routes by verifying JWT tokens or session cookies before accessing the database.
