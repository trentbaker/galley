# Galley

## Development

### Create and activate virtual environment

```bash
python3 -m venv .env
source .env/bin/activate
```

### Update `requirements.txt`

```bash
pip freeze > requirements.txt
```

### Install git hooks

```bash
cp -r hooks/* .git/hooks/
```
