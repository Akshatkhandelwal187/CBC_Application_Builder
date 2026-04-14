#!/bin/bash
# Wrapper to scaffold projects based on stack argument
STACK=$1
TARGET_DIR=$2

if [ "$STACK" == "nextjs" ]; then
  npx create-next-app@latest "$TARGET_DIR" --typescript --tailwind --eslint --app --src-dir --import-alias "@/*" --use-npm -y
elif [ "$STACK" == "vite-react" ]; then
  npm create vite@latest "$TARGET_DIR" -- --template react-ts -y
elif [ "$STACK" == "fastapi" ]; then
  mkdir -p "$TARGET_DIR"
  cd "$TARGET_DIR"
  uv init
  uv add fastapi uvicorn
elif [ "$STACK" == "django" ]; then
  mkdir -p "$TARGET_DIR"
  cd "$TARGET_DIR"
  uv init
  uv add django
  uv run django-admin startproject config .
else
  echo "Unknown stack: $STACK"
  exit 1
fi
