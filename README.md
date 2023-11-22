# calories_counter_bot
Telegram bot for calculate calories

## Commands

- /help - show help message

## Quick start
1. Install dependencies
```bash
poetry config virtualenvs.in-project true # optional
poetry install
```
2. init db
```bash
cat db.sql | sqlite3 db.sqlite3
```


## Development
Requirements for local development

- [`poetry`](https://python-poetry.org/docs/#osx-linux-bashonwindows-install-instructions) (**mandatory**)
- python **3.11**
- `pre-commit install`
