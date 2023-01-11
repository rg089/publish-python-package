# Utility script for building and uploading python packages
# Author: rg089

python -m pip install --upgrade build
python -m build
python -m pip install --upgrade twine
twine upload dist/*