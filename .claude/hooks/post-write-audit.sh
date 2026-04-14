#!/bin/bash
# Hook triggered on PostToolUse where matcher="Write"
# Arguments given by Claude Code: we need to parse them, or just print timestamp.
# Let's log the fact that a file was written.

TIMESTAMP=$(date +"%Y-%m-%dT%H:%M:%S%z")
mkdir -p .workspace
echo "[$TIMESTAMP] File written during generation" >> .workspace/audit.log
