# Smoke Test Patterns

- Use Playwright to test critical happy paths (e.g. signup, login, create item).
- Do not write exhaustive unit tests here; focus on E2E integration.
- Ensure the app is fully booted before running tests (wait-on).
- Assert visible text, correct navigation, and successful form submissions.
