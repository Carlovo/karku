# Karku's Kanttekeningen

## Dev

### Requirements

- pyenv
- pipenv
- markdownlint
- ruff
- terraform

### Setting up

- `pipenv install`

### Cycle

- format: `ruff format`, `terraform format`
- build: `pipenv run sphinx-build -M html docs/ docs/_build/`
- test: `python -m http.server`
- publish: `terraform apply`
