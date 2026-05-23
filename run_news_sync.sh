#!/usr/bin/env bash
set -euo pipefail

cd /home/typethe0ry/.openclaw/workspace/news-sync
export PATH="/home/typethe0ry/.local/bin:$PATH"
export NEWS_REPO_URL="https://github.com/TypeThe0ry/news.git"
export NEWS_BRANCH="main"
export NEWS_WORKDIR="/tmp/news-github-sync"
export NEWS_OUTPUT_DIR="news"
export NEWS_MAX_ITEMS_PER_FEED="10"
export GIT_AUTHOR_NAME="TypeThe0ry"
export GIT_AUTHOR_EMAIL="TypeThe0ry@users.noreply.github.com"

if [ ! -d .venv ]; then
  python3 -m venv .venv
fi

. .venv/bin/activate
pip install -q -r requirements.txt
python3 sync_news_to_github.py
