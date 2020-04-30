#!/bin/sh -e

find . -name "*.py" | xargs reorder-python-imports --diff-only
black --check .