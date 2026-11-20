#!/usr/bin/env bash
set -euo pipefail

if [[ -z "${LLM_API_KEY:-}" ]]; then
  echo "Please set the LLM_API_KEY environment variable first."
  exit 1
fi

kubectl -n ai-assistant create secret generic ai-secrets \
  --from-literal=LLM_API_KEY="$LLM_API_KEY"
