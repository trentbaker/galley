# Galley

## Development

### install virtual environment

```bash
python3 -m venv .env
source .env/bin/activate
pip install --update pip
pip install -r requirements.txt
```

### Update `requirements.txt`

```zsh
pip freeze >! requirements.txt
```

```bash
pip freeze > requirements.txt
```

### Install git hooks

```bash
cp -r hooks/* .git/hooks/
```
