#!/bin/sh -e

find . -name "*.py" | xargs reorder-python-imports
black --check .