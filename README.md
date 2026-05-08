# News GitHub Sync

自动抓取 RSS 新闻，生成每日 Markdown 文件，并同步到 GitHub 仓库。

## 安装

```bash
pip install -r requirements.txt
```

## 运行

SSH 方式：

```bash
export NEWS_REPO_URL="git@github.com:USER/REPO.git"
python3 sync_news_to_github.py
```

HTTPS Token 方式：

```bash
export NEWS_REPO_URL="https://github.com/USER/REPO.git"
export GITHUB_TOKEN="ghp_xxx"
python3 sync_news_to_github.py
```

## 可选配置

```bash
export NEWS_BRANCH="main"
export NEWS_WORKDIR="/tmp/news-github-sync"
export NEWS_OUTPUT_DIR="news"
export NEWS_MAX_ITEMS_PER_FEED="10"
```

## 定时执行 cron 示例

每天 UTC 00:00 执行：

```cron
0 0 * * * cd /path/to/news-sync && /usr/bin/python3 sync_news_to_github.py >> sync.log 2>&1
```
