#!/bin/bash
# Wrapper to run playwright tests
TEST_DIR=${1:-"."}
echo "Running Playwright smoke tests in $TEST_DIR"
npx playwright test --dir "$TEST_DIR"
