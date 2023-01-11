PROJECT_NAME=$1

touch LICENSE
touch pyproject.toml
mkdir src
mkdir src/${PROJECT_NAME}
touch src/${PROJECT_NAME}/__init__.py
touch src/${PROJECT_NAME}/main.py
mkdir tests
touch .gitignore