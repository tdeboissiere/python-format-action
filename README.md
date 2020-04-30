# python-format-action

GitHub action to apply [black](https://github.com/psf/black) formatting + [reorder-python-imports](https://github.com/asottile/reorder_python_imports)

Largely derived from

- [python-lint-isort-black](https://github.com/marketplace/actions/python-lint-isort-black)
- [black-code-formatter](https://github.com/marketplace/actions/black-code-formatter)

## Example usage

- Create `$GIT_REPO_ROOT_DIR/.github/workflows`
- Create `$GIT_REPO_ROOT_DIR/.github/workflows/main.yml`

Fill above file file with:

```bash
name: "PythonFormatting"

on: [push, pull_request]

jobs:
  formatting:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      # Run reorder-python-imports + black formatter
      - name: Black Code Formatter
        uses: tdeboissiere/python-format-action@master
```