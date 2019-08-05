#!/bin/bash

# for python2

# pipenv install -d "jedi>=0.9.0" "json-rpc>=1.8.1" "service_factory>=0.1.5"
pipenv install -d jedi json-rpc service_factory

pipenv install -d yapf futures flake8 flake8-import-order pep8-naming "pydocstyle==3.0.0"

pipenv install -d 'python-language-server[all]' pyls-isort autoflake importmagic epc
