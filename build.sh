#!/usr/bin/env bash
# Empaqueta el plugin como postit.plugin (zip) para subirlo a Claude.ai
set -e
mkdir -p dist
zip -r dist/postit.plugin .claude-plugin skills README.md -x "*.DS_Store"
echo "✓ dist/postit.plugin generado"
