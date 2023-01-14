# Instructions for creating a python package

Reference: [https://packaging.python.org/en/latest/tutorials/packaging-projects/](https://packaging.python.org/en/latest/tutorials/packaging-projects/)
## Creating the directory structure:
Run the following command to initialize the structure:
```
bash create_structure.sh {PROJECT_NAME}
```
Replace {PROJECT_NAME} with the name of your project.

## Filling pyproject.toml

Add the following to pyproject.toml
```
[build-system]
requires = ["setuptools>=61.0"]
build-backend = "setuptools.build_meta"
```

Add all the dependencies in the `requires` list.

Then, add the following:
```
[project]
name = "{PROJECT_NAME}"
version = "0.0.1"
authors = [
  { name="NAME", email="EMAIL" },
]
description = "DESC"
readme = "README.md"
requires-python = ">=3.7"
classifiers = [
    "Programming Language :: Python :: 3",
    "License :: OSI Approved :: GNU General Public License v3 (GPLv3)",
    "Operating System :: OS Independent",
]

[project.urls]
"Homepage" = "DOCUMENTATION URL/ GITHUB URL"
"Bug Tracker" = "GITHUB ISSUES URL"
```
Fill with the desired arguments. Chose classifiers from https://pypi.org/classifiers/.

## Chosing a license

Chose a license from [https://choosealicense.com/](https://choosealicense.com/) and paste its text in the `LICENSE` file.

## Building and Uploading (Direct)

Run:
```
bash build_upload.sh
```

## Building and Uploading (Stepwise)
Run:
```
python -m pip install --upgrade build
```

Now, run the following command in the package directory where `pyproject.toml` is present.

```
python -m build
```

Hopefully, the `dist` folder should be created with the built files!

Install twine:

```
python -m pip install --upgrade twine
```

Upload to PyPI:
```
twine upload dist/*
```

Enter username and password, and voila!
