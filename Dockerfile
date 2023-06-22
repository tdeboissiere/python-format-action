FROM python:3

LABEL "com.github.actions.name"="Black + reorder_python_import Code Formatter"
LABEL "com.github.actions.description"="Format Python code using black + reorder_python_import"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="black"

LABEL "repository"="https://github.com/tdeboissiere/python-format-action"
LABEL "homepage"="https://github.com/tdeboissiere/python-format-action"
LABEL "maintainer"="tdeboissier"

RUN pip install black reorder-python-imports==3.10.0

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
