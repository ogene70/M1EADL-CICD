# REPONSES
##### Question 5: resultats du pipline pour les tests des fonctions addition soustraction 
###### The pipline
```
name: Run python unit test
run-name: ${{ github.actor }} runs unit tests 🚀

on: [push]

jobs:
  launch-unit-tests:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v5
        
      - name: Set up Python
        uses: actions/setup-python@v5
        with:
          python-version: "3.14"

      - name: Install Poetry
        run: pip install poetry

      - name: Install dependencies
        run: poetry install

      - name: Run unit tests
        run: poetry run python -m unittest
```
* Addition test
* Addition false results test
* Soustraction test
###### Pipline Results
<img src="/screenshot/q5-unittest.png" height="350" width="350" />

##### Questions 6 : Linting
###### The Pipline
Considering that here my pipline is design to stop at the step'poetry run pylint', because my code dont respect pep8 conventions

```
name: Link Dockerise and run unit tests
run-name: ${{ github.actor }} Dockerise the app 🚀

on: [push]

jobs:
  launch-unit-tests:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v5

      - name: Set up Python
        uses: actions/setup-python@v5
        with:
          python-version: "3.14"

      - name: Install Poetry
        run: pip install poetry

      - name: Pip install pylint
        run : poetry add --group dev pylint

      - name: Install dependencies
        run: poetry install

      - name: poetry run pylint
        run: poetry run pylint cicdtest

      - name: Install docker
        run: sudo apt update && sudo apt install -y docker-ce

      - name: Docker version verify
        run: docker --version

      - name: Build the image
        run: docker build -t pythonCiCd -f Dockerfile .

      - name: List Docker images 
        run: docker image ls

      - name: Containerise the app
        run: docker run --name pythonTestContainer pythonCiCd

```

###### The results
<img src="/screenshot/q6-lintJob.png" height="350" width="350" />

##### Question 7 : Dockerise and run unit tests

###### The docker file

###### The pipline

###### The results
