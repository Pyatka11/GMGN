#!/bin/bash
# Стандартный push в GitHub — всегда запускай: ./push.sh
set -e
cd "$(dirnam
# Токен: из .env.github или из переменной GITHUB_TOKEN
if [ -f .env.github ]; then
  # shellcheck disable=SC1091
  source .env.github
fi

if [ -z "$GITHUB_TOKEN" ]; then
  echo "❌ Нет токена."
  echo ""
  echo "Один раз создай .env.github:"
  echo "  cp .env.github.example .env.github"
  echo "  # вставь: GITHUB_TOKEN=ghp_..."
  echo ""
  echo "Или разово:"
  echo "  GITHUB_TOKEN='ghp_...' ./push.sh"
  exit 1
fi

BRANCH="${1:-main}"
REMOTE="https://Pyatka11:${GITHUB_TOKEN}@github.com/Pyatka11/GMGN.git"

echo "→ push Pyatka11/GMGN → $BRANCH"
git push "$REMOTE" "HEAD:$BRANCH"
