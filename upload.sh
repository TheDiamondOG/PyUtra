#!/bin/sh

# Remove old updates
rm -rf build
rm -rf dist

# Uploading to pypi:
source .venv/bin/activate
pip install setuptools wheel twine
python3 setup.py sdist bdist_wheel
twine upload dist/*