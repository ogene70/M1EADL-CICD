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

##### Questions 6 and 7: Lynting, dockerisation and unittest
###### The Pipline
```
```
<img src="/screenshot/q5-unittest.png" height="350" width="350" />

###### The results