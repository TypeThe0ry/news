#!/usr/bin/env bash
set -euo pipefail

cd /home/hahatt/.openclaw/workspace/news-sync
export PATH="/home/hahatt/.local/bin:$PATH"
export NEWS_REPO_URL="https://github.com/hahaTT0902/news.git"
export NEWS_BRANCH="main"
export NEWS_WORKDIR="/tmp/news-github-sync"
export NEWS_OUTPUT_DIR="news"
export NEWS_MAX_ITEMS_PER_FEED="10"

if [ ! -d .venv ]; then
  python3 -m venv .venv
fi

. .venv/bin/activate
pip install -q -r requirements.txt
python3 sync_news_to_github.py
